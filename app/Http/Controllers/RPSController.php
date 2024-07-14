<?php

namespace App\Http\Controllers;

use App\Models\DosenPengampu;
use App\Models\MatakuliahKBK;
use App\Models\RPS;
use App\Models\Tahun;
use App\Models\VerifikasiRPS;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;


class RPSController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        if (auth()->user()->hasAnyRole(['pengurus_kbk', 'pimpinan_jurusan'])) {
            $rpsData = RPS::orderByDesc('id_rps')->get();
            return view('admin/dataRPS', compact('rpsData'));
        } elseif (auth()->user()->hasRole('pimpinan_prodi')) {
            $user = auth()->user();
            $id_prodi = null;
            $pimpinanProdi = $user->pimpinanProdi;
            $id_prodi = $pimpinanProdi->prodis->id_prodi;
            $kode_prodi = $pimpinanProdi->prodis->kode_prodi;
            $rpsData = RPS::select('rps.*')
                // ->join('rps', 'verifikasi_rps.id_rps', '=', 'rps.id_rps')
                ->join('matakuliah_kbk', 'rps.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
                ->join('matakuliah', 'rps.id_matakuliah', '=', 'matakuliah.id_matakuliah')
                ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
                ->whereNotNull('rps.evaluasi')
                ->where('kurikulum.id_prodi', $id_prodi)
                ->get();
            // dd($rpsData);
            return view('admin/dataRPS', compact('rpsData'));
        } else {
            $user = Auth::user();
            $rpsData = RPS::where('id_dosen_pengembang', $user->id)->orderByDesc('id_rps')->get();
            return view('admin/dataRPS', compact('rpsData'));
        }
    }

    public function create()
    {
        $tahun = Tahun::where('status', 1)->first();
        // dd($tahun);
        $matakuliah = DosenPengampu::with('matakuliah.kurikulum.prodi')->get();
        return view('admin/createRPS', compact('matakuliah', 'tahun'));
    }

    public function store(Request $request)
    {
        // dd($request);
        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'id_tahun_akademik' => 'required',
            'dokumen' => 'required|file|mimes:pdf|max:25000',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $existingRps = RPS::where('id_matakuliah', $request->id_matakuliah)
            ->where('id_dosen_pengembang', Auth::user()->id)
            ->first();
        // dd($existingRps);

        if ($existingRps) {
            return redirect()->back()->withInput()->withErrors(['id_matakuliah' => 'Anda sudah mengunggah RPS untuk matakuliah ini.'])->with('error', 'Anda sudah mengunggah RPS untuk matakuliah ini.');
        }

        DB::beginTransaction();

        try {
            $rpsData = [
                'id_matakuliah' => $request->id_matakuliah,
                'id_tahun_akademik' => $request->id_tahun_akademik,
                'id_prodi' => $request->id_prodi,
                'dokumen' => $request->dokumen->store('RPS'),
                'id_dosen_pengembang' => Auth::id(),

            ];

            $rpsData = RPS::create($rpsData);

            $verifData = [
                'id_rps' => $rpsData->id_rps,
            ];

            VerifikasiRPS::create($verifData);

            DB::commit();

            return redirect()->route('verifikasi.rps')->with('success', 'RPS berhasil diupload.');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withInput()->withErrors($e->getMessage());
        }
    }

    public function edit(Request $request, $id_rps)
    {
        $tahun = Tahun::where('status', 1)->first();
        $rpsData = RPS::find($id_rps);
        $matakuliah = DosenPengampu::with('matakuliah.kurikulum.prodi')->get();
        return view('admin/editRPS', compact('rpsData', 'matakuliah', 'tahun'));
    }

    public function update(Request $request, $id_rps)
    {
        // dd($request);

        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'id_tahun_akademik' => 'required',
            'dokumen' => 'file|mimes:pdf|max:25000',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $rpsData['id_matakuliah'] = $request->id_matakuliah;
        $rpsData['id_tahun_akademik'] = $request->id_tahun_akademik;
        $rpsData['id_prodi'] = $request->id_prodi;
        $rpsData['id_dosen_pengembang'] = Auth::id();
        if ($request->file('dokumen')) {
            if ($request->oldDokumen) {
                Storage::delete($request->oldDokumen);
            }
            $rpsData['dokumen'] = $request->dokumen->store('RPS');
        }

        RPS::updateRPS($id_rps, $rpsData);
        // dd($request->all());

        return redirect()->route('verifikasi.rps');
    }

    public function destroy($id_rps)
    {
        $rpsData = RPS::find($id_rps);

        if ($rpsData->dokumen) {
            Storage::delete($rpsData->dokumen);
        }

        $rpsData->delete();
        return redirect()->route('verifikasi.rps');
    }
}
