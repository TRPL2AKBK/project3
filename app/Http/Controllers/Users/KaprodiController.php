<?php

namespace App\Http\Controllers\Users;

use App\Models\DosenPengampu;
use App\Models\Kaprodi;
use App\Models\Matakuliah;
use App\Models\RPS;
use App\Models\Soal;
use App\Models\VerifikasiRPS;
use App\Models\VerifikasiSoal;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class KaprodiController extends Controller
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
        $user = auth()->user();
        $id_prodi = null;
        $pimpinanProdi = $user->pimpinanProdi;
        $id_prodi = $pimpinanProdi->prodis->id_prodi;
        $kode_prodi = $pimpinanProdi->prodis->kode_prodi;
        $matakuliah = DosenPengampu::select('dosen_matakuliah.*')
            ->join('matakuliah_kbk', 'dosen_matakuliah.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
            ->join('matakuliah', 'dosen_matakuliah.id_matakuliah', '=', 'matakuliah.id_matakuliah')
            ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
            ->where('kurikulum.id_prodi', $id_prodi)
            ->count();
        $dataRps = RPS::select('rps.*')
            ->join('matakuliah_kbk', 'rps.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
            ->join('matakuliah', 'rps.id_matakuliah', '=', 'matakuliah.id_matakuliah')
            ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
            ->whereNotNull('rps.evaluasi')
            ->where('kurikulum.id_prodi', $id_prodi)
            ->get();
        $countByIdKbk = $dataRps->groupBy('id_kbk')->map(function ($group) {
            return $group->count();
        });

        // Ubah koleksi menjadi array untuk penggunaan di view
        $countByIdKbk = $countByIdKbk->toArray();

        // Kirim data ke view untuk ditampilkan di chart
        // return view('your_view_name', compact('countByIdKbk'));
        $verifRps = VerifikasiRPS::select('verifikasi_rps.*')
            ->join('rps', 'verifikasi_rps.id_rps', '=', 'rps.id_rps')
            ->join('matakuliah_kbk', 'rps.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
            ->join('matakuliah', 'rps.id_matakuliah', '=', 'matakuliah.id_matakuliah')
            ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
            ->whereNotNull('verifikasi_rps.evaluasi')
            ->where('kurikulum.id_prodi', $id_prodi)
            ->get();
        $dataSoal = Soal::select('soal.*')
            ->join('matakuliah_kbk', 'soal.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
            ->join('matakuliah', 'soal.id_matakuliah', '=', 'matakuliah.id_matakuliah')
            ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
            ->whereNotNull('soal.evaluasi')
            ->where('kurikulum.id_prodi', $id_prodi)
            ->get();
        $verifSoal = VerifikasiSoal::select('verifikasi_soal.*')
            ->join('soal', 'verifikasi_soal.id_soal', '=', 'soal.id_soal')
            ->join('matakuliah_kbk', 'soal.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
            ->join('matakuliah', 'soal.id_matakuliah', '=', 'matakuliah.id_matakuliah')
            ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
            ->whereNotNull('verifikasi_soal.evaluasi')
            ->where('kurikulum.id_prodi', $id_prodi)
            ->get();
        return view('kaprodi\dashboard', compact('dataRps', 'dataSoal', 'verifSoal', 'verifRps', 'matakuliah', 'countByIdKbk'));
    }
}
