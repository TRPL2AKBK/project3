<?php

namespace App\Http\Controllers;

use App\Models\DosenPengampu;
use App\Models\Soal;
use App\Models\Tahun;
use App\Models\VerifikasiSoal;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class SoalController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        if (auth()->user()->hasAnyRole(['pengurus_kbk', 'pimpinan_jurusan'])) {
            $soalData = Soal::orderByDesc('id_soal')->get();
            return view('admin/dataSoal', compact('soalData'));
        } elseif (auth()->user()->hasRole('pimpinan_prodi')) {
            $user = auth()->user();
            $id_prodi = null;
            $pimpinanProdi = $user->pimpinanProdi;
            $id_prodi = $pimpinanProdi->prodis->id_prodi;
            $kode_prodi = $pimpinanProdi->prodis->kode_prodi;
            $soalData = Soal::select('soal.*')
                // ->join('soal', 'verifikasi_soal.id_soal', '=', 'soal.id_soal')
                ->join('matakuliah_kbk', 'soal.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
                ->join('matakuliah', 'soal.id_matakuliah', '=', 'matakuliah.id_matakuliah')
                ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
                ->whereNotNull('soal.evaluasi')
                ->where('kurikulum.id_prodi', $id_prodi)
                ->get();
            return view('admin/dataSoal', compact('soalData'));
        } else {
            $user = Auth::user();
            $soalData = Soal::where('dosen_pengampu', $user->id)->orderByDesc('id_soal')->get();
            return view('admin/dataSoal', compact('soalData'));
        }
    }

    public function create()
    {
        $tahun = Tahun::where('status', 1)->first();
        $matakuliah = DosenPengampu::with('matakuliah.kurikulum.prodi')->get();
        return view('admin/createSoal', compact('matakuliah', 'tahun'));
    }

    public function store(Request $request)
    {
        // dd($request);
        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'dokumen' => 'required|file|mimes:pdf|max:25000',
            'id_tahun_akademik' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator);
        }

        $existingRps = Soal::where('id_matakuliah', $request->id_matakuliah)
            ->where('dosen_pengampu', Auth::user()->id)
            ->first();
        // dd($existingRps);

        if ($existingRps) {
            return redirect()->back()->withInput()->withErrors(['id_matakuliah' => 'Anda sudah mengunggah Soal untuk matakuliah ini.'])->with('error', 'Anda sudah mengunggah Soal untuk matakuliah ini.');
        }

        DB::beginTransaction();

        try {
            $soalData = [
                'id_matakuliah' => $request->id_matakuliah,
                'dosen_pengampu' => Auth::id(),
                'dokumen' => $request->dokumen->store('SOAL'),
                'id_tahun_akademik' => $request->id_tahun_akademik,
                'id_prodi' => $request->id_prodi,
            ];

            $soal = Soal::create($soalData); // Menggunakan variabel baru $soal

            // Simpan data ke tabel 'verifikasi_soal' dengan 'id_soal' yang sama
            $verifData = [
                'id_soal' => $soal->id_soal, // Mengakses primary key yang benar
                // Tambahkan kolom lainnya sesuai kebutuhan
            ];

            VerifikasiSoal::create($verifData);

            DB::commit();

            return redirect()->route('verifikasi.soal');
        } catch (\Exception $e) {
            DB::rollback();
            // Tangani kesalahan jika terjadi
            return redirect()->back()->withInput()->withErrors($e->getMessage());
        }
    }




    public function edit(Request $request, $id_soal)
    {
        $tahun = Tahun::where('status', 1)->first();
        $soalData = Soal::find($id_soal);
        $matakuliah = DosenPengampu::with('matakuliah.kurikulum.prodi')->get();

        return view('admin/editSoal', compact('soalData', 'matakuliah', 'tahun'));
    }



    public function update(Request $request, $id_soal)
    {
        // dd($request);
        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'id_tahun_akademik' => 'required',
            'dokumen' => 'file|mimes:pdf|max:25000',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $soalData['id_matakuliah'] = $request->id_matakuliah;
        $soalData['dosen_pengampu'] = Auth::id();
        $soalData['id_tahun_akademik'] = $request->id_tahun_akademik;
        $soalData['id_prodi'] = $request->id_prodi;

        if ($request->file('dokumen')) {
            if ($request->oldDokumen) {
                Storage::delete($request->oldDokumen);
            }
            $soalData['dokumen'] = $request->dokumen->store('SOAL');
        }

        Soal::updateSoal($id_soal, $soalData);
        // dd($request->all());

        return redirect()->route('verifikasi.soal');
    }

    public function destroy($id_soal)
    {
        $soalData = Soal::find($id_soal);

        if ($soalData->dokumen) {
            Storage::delete($soalData->dokumen);
        }

        $soalData->delete();
        return redirect()->route('verifikasi.soal');
    }
}
