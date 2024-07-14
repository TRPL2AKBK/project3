<?php

namespace App\Http\Controllers;


use App\Models\KBK;
use App\Models\Prodi;
use App\Models\Soal;
use App\Models\User;
use App\Models\VerifikasiSoal;
use App\Notifications\SoalVerifiedNotification;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class VerifikasiSoalController extends Controller
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
            $verifData = VerifikasiSoal::select('verifikasi_soal.*')
                ->join('soal', 'verifikasi_soal.id_soal', '=', 'soal.id_soal')
                ->join('matakuliah_kbk', 'soal.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
                ->join('matakuliah', 'soal.id_matakuliah', '=', 'matakuliah.id_matakuliah')
                ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
                ->whereNotNull('verifikasi_soal.evaluasi')
                ->where('kurikulum.id_prodi', $id_prodi)
                ->get();
        } else {
            $verifData = VerifikasiSoal::with('soal.pengembang')->orderByDesc('id_verif_soal')->get();
        }
        foreach ($verifData as $verifikasi) {
            $soal = $verifikasi->soal;

            if ($soal) {
                $namaMatakuliah = $soal->matakuliah->nama_matakuliah;
            }
        }
        if (auth()->user()->hasRole('pimpinan_prodi')) {
            return view('admin/dataVerifikasiSoal', compact('verifData', 'list_kbk', 'list_prodi', 'kode_prodi'));
        }
        return view('admin/dataVerifikasiSoal', compact('verifData', 'list_kbk', 'list_prodi'));
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show(VerifikasiSoal $verifikasiSoal)
    {
        //
    }

    public function edit(Request $request, $id_verif_soal)
    {
        $verifData = VerifikasiSoal::find($id_verif_soal);
        return view('admin/editVerifikasiSoal', compact('verifData'));
    }

    // public function update(Request $request, $id_verif_soal)
    // {
    //     // Validasi input
    //     $validator = Validator::make($request->all(), [
    //         'evaluasi' => 'required',
    //     ]);

    //     if ($validator->fails()) {
    //         return redirect()->back()->withInput()->withErrors($validator);
    //     }

    //     // Temukan data Verifikasisoal berdasarkan id_verif_soal
    //     $verifData = VerifikasiSoal::find($id_verif_soal);

    //     // Jika data Verifikasisoal tidak ditemukan, kembalikan respon error
    //     if (!$verifData) {
    //         return redirect()->route('verifikasi.verifsoal')->with('error', 'Data Verifikasisoal tidak ditemukan');
    //     }

    //     // Periksa apakah id_soal ada di dalam Verifikasisoal
    //     $id_soal = $verifData->id_soal;

    //     if ($id_soal) {
    //         // Data untuk update Verifikasisoal
    //         $verifData->evaluasi = $request->evaluasi;
    //         $verifData->tanggal = now();

    //         // Data untuk update soal
    //         $soalData = [
    //             'evaluasi' => $request->evaluasi,
    //         ];

    //         // Lakukan update pada Verifikasisoal dan soal
    //         Soal::updateSoal($id_soal, $soalData);
    //         $verifData->save();

    //         return redirect()->route('verifikasi.verifsoal')->with('success', 'Data berhasil diupdate');
    //     }

    //     return redirect()->route('verifikasi.verifsoal')->with('error', 'id_soal tidak ditemukan di Verifikasisoal');
    // }

    public function update(Request $request, $id_verif_soal)
    {
        // Validasi input
        $validator = Validator::make($request->all(), [
            'evaluasi' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator);
        }

        // Temukan data VerifikasiSoal berdasarkan id_verif_soal
        $verifData = VerifikasiSoal::find($id_verif_soal);

        // Jika data VerifikasiSoal tidak ditemukan, kembalikan respon error
        if (!$verifData) {
            return redirect()->route('verifikasi.verifsoal')->with('error', 'Data VerifikasiSoal tidak ditemukan');
        }

        // Periksa apakah id_soal ada di dalam VerifikasiSoal
        $id_soal = $verifData->id_soal;

        if ($id_soal) {
            // Data untuk update VerifikasiSoal
            $verifData->evaluasi = $request->evaluasi;
            $verifData->tanggal = now();

            // Data untuk update Soal
            $soalData = [
                'evaluasi' => $request->evaluasi,
            ];

            // Lakukan update pada VerifikasiSoal dan Soal
            Soal::updateSoal($id_soal, $soalData);
            $verifData->save();

            // Kirim notifikasi ke dosen yang mengupload Soal
            $pengurus = Auth::user(); // Pengurus yang melakukan verifikasi
            $dosen = User::find($verifData->soal->dosen_pengampu); // Dosen yang mengupload Soal
            // dd($dosen);
            if ($dosen) {
                $dosen->notify(new SoalVerifiedNotification($verifData->soal, $pengurus));
            }

            return redirect()->route('verifikasi.verifsoal')->with('success', 'Data berhasil diverifikasi');
        }

        return redirect()->route('verifikasi.verifsoal')->with('error', 'id_soal tidak ditemukan di VerifikasiSoal');
    }

    public function destroy($id_verif_soal)
    {
        $verifData = VerifikasiSoal::find($id_verif_soal);

        $verifData->delete();
        return redirect()->route('verifikasi.verifsoal')->with('success', 'Data berhasil dihapus');
    }
}
