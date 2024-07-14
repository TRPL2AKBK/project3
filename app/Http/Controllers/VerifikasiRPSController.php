<?php

namespace App\Http\Controllers;

use App\Models\KBK;
use App\Models\Notification;
use App\Models\Prodi;
use App\Models\RPS;
use App\Models\User;
use App\Models\VerifikasiRPS;
use App\Notifications\RpsVerifiedNotification;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class VerifikasiRPSController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $list_kbk = KBK::all();
        $list_prodi = Prodi::all();

        if (auth()->user()->hasRole('pimpinan_prodi')) {
            $user = auth()->user();
            $id_prodi = null;
            $pimpinanProdi = $user->pimpinanProdi;
            $id_prodi = $pimpinanProdi->prodis->id_prodi;
            $kode_prodi = $pimpinanProdi->prodis->kode_prodi;
            $verifData = VerifikasiRPS::select('verifikasi_rps.*')
                ->join('rps', 'verifikasi_rps.id_rps', '=', 'rps.id_rps')
                ->join('matakuliah_kbk', 'rps.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
                ->join('matakuliah', 'rps.id_matakuliah', '=', 'matakuliah.id_matakuliah')
                ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
                ->whereNotNull('verifikasi_rps.evaluasi')
                ->where('kurikulum.id_prodi', $id_prodi)
                ->get();
        } else {
            $verifData = VerifikasiRPS::with('rps.pengembang')->orderByDesc('id_verif_rps')->get();
        }
        foreach ($verifData as $verifikasi) {
            $rps = $verifikasi->rps;

            if ($rps) {
                $namaMatakuliah = $rps->matakuliah->nama_matakuliah;
            }
        }
        if (auth()->user()->hasRole('pimpinan_prodi')) {
            return view('admin/dataVerifikasiRPS', compact('verifData', 'list_kbk', 'list_prodi', 'kode_prodi'));
        }
        return view('admin/dataVerifikasiRPS', compact('verifData', 'list_kbk', 'list_prodi'));
    }

    public function create()
    {
    }

    public function store(Request $request)
    {
        //
    }

    public function show(VerifikasiRPS $verifikasiRPS)
    {
        //
    }

    public function edit(Request $request, $id_verif_rps)
    {
        $verifData = VerifikasiRPS::find($id_verif_rps);
        return view('admin/editVerifikasiRPS', compact('verifData'));
    }

    public function update(Request $request, $id_verif_rps)
    {
        // Validasi input
        $validator = Validator::make($request->all(), [
            'evaluasi' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator);
        }

        // Temukan data VerifikasiRPS berdasarkan id_verif_rps
        $verifData = VerifikasiRPS::find($id_verif_rps);

        // Jika data VerifikasiRPS tidak ditemukan, kembalikan respon error
        if (!$verifData) {
            return redirect()->route('verifikasi.verifrps')->with('error', 'Data VerifikasiRPS tidak ditemukan');
        }

        // Periksa apakah id_rps ada di dalam VerifikasiRPS
        $id_rps = $verifData->id_rps;

        if ($id_rps) {
            // Data untuk update VerifikasiRPS
            $verifData->evaluasi = $request->evaluasi;
            $verifData->tanggal = now();

            // Data untuk update RPS
            $rpsData = [
                'evaluasi' => $request->evaluasi,
            ];

            // Lakukan update pada VerifikasiRPS dan RPS
            RPS::updateRPS($id_rps, $rpsData);
            $verifData->save();

            // Kirim notifikasi ke dosen yang mengupload RPS
            $pengurus = Auth::user(); // Pengurus yang melakukan verifikasi
            $dosen = User::find($verifData->rps->id_dosen_pengembang); // Dosen yang mengupload RPS
            // dd($dosen);
            if ($dosen) {
                $dosen->notify(new RpsVerifiedNotification($verifData->rps, $pengurus));
            }

            return redirect()->route('verifikasi.verifrps')->with('success', 'Data berhasil diverifikasi');
        }

        return redirect()->route('verifikasi.verifrps')->with('error', 'id_rps tidak ditemukan di VerifikasiRPS');
    }


    public function destroy($id_verif_rps)
    {
        $verifData = VerifikasiRPS::find($id_verif_rps);

        $verifData->delete();
        return redirect()->route('verifikasi.verifrps')->with('success', 'Data berhasil dihapus');
    }
}
