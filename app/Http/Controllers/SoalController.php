<?php

namespace App\Http\Controllers;

use App\Models\DosenPengampu;
use App\Models\Soal;
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
        if (auth()->user()->id_level == 1 || auth()->user()->id_level == 2 || auth()->user()->id_level == 3) {
            $soalData = Soal::orderByDesc('id_soal')->get();
            return view('admin/dataSoal', compact('soalData'));
        } else {
            $user = Auth::user();
            $soalData = Soal::where('dosen_pengampu', $user->id)->orderByDesc('id_soal')->get();
            return view('admin/dataSoal', compact('soalData'));
        }
    }

    public function create()
    {
        $matakuliah = DosenPengampu::get();
        return view('admin/createSoal', compact('matakuliah'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'dokumen' => 'required|file|mimes:pdf|max:25000',
            'id_tahun_akademik' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator);
        }

        DB::beginTransaction();

        try {
            $soalData = [
                'id_matakuliah' => $request->id_matakuliah,
                'dosen_pengampu' => Auth::id(),
                'dokumen' => $request->dokumen->store('SOAL'),
                'id_tahun_akademik' => $request->id_tahun_akademik,
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
        $soalData = Soal::find($id_soal);
        $matakuliah = DosenPengampu::get();

        return view('admin/editSoal', compact('soalData', 'matakuliah'));
    }



    public function update(Request $request, $id_soal)
    {
        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'id_tahun_akademik' => 'required',
            'dokumen' => 'file|mimes:pdf|max:25000',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $soalData['id_matakuliah'] = $request->id_matakuliah;
        $soalData['dosen_pengampu'] = Auth::id();
        $soalData['id_tahun_akademik'] = $request->id_tahun_akademik;

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
