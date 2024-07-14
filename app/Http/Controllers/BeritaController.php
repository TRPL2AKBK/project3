<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\KBK;
use App\Models\PimpinanJurusan;
use App\Models\PimpinanProdi;
use App\Models\Prodi;
use App\Models\VerifikasiRPS;
use App\Models\VerifikasiSoal;
use Barryvdh\DomPDF\Facade\Pdf as FacadePdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class BeritaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function rps(Request $request)
    {
        // include_once app_path('Helpers/NumberHelper.php');

        $id_kbk = $request->id_kbk;
        $kode_prodi = $request->kode_prodi;
        $prodi = Prodi::where('kode_prodi', $kode_prodi)->first();
        $id_prodi = $prodi ? $prodi->id_prodi : null;
        $kaprodi = PimpinanProdi::where('kode_prodi', $kode_prodi)->first();
        $kajur = PimpinanJurusan::where('jabatan_pimpinan', 'Ketua Jurusan')->get();
        $kbk = KBK::find($id_kbk);

        $dataVerif = VerifikasiRPS::select('verifikasi_rps.*')
            ->join('rps', 'verifikasi_rps.id_rps', '=', 'rps.id_rps')
            ->join('matakuliah_kbk', 'rps.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
            ->join('matakuliah', 'rps.id_matakuliah', '=', 'matakuliah.id_matakuliah')
            ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
            ->whereNotNull('verifikasi_rps.evaluasi')
            ->where('matakuliah_kbk.id_kbk', $id_kbk)
            ->where('kurikulum.id_prodi', $id_prodi)
            ->get();

        if (!$kaprodi) {
            return back()->with('failed', 'Data Pimpinan Prodi tidak ditemukan untuk kode prodi: ' . $kode_prodi);
        }
        if ($dataVerif->isEmpty()) {
            return redirect()->back()->with('failed', 'Data Verifikasi tidak ditemukan');
        }

        $pdf = FacadePdf::loadView('berita.beritaRps', compact('dataVerif', 'kaprodi', 'kajur', 'kbk'));
        return $pdf->stream('berita_acara_verifikasi_rps' . $kode_prodi . '.pdf');
    }

    public function soal(Request $request)
    {
        $id_kbk = $request->id_kbk;
        $kode_prodi = $request->kode_prodi;
        $prodi = Prodi::where('kode_prodi', $kode_prodi)->first();
        $id_prodi = $prodi ? $prodi->id_prodi : null;
        $kaprodi = PimpinanProdi::where('kode_prodi', $kode_prodi)->first();
        $kajur = PimpinanJurusan::where('jabatan_pimpinan', 'Ketua Jurusan')->get();
        $kbk = KBK::find($id_kbk);
        $dataVerif = VerifikasiSoal::select('verifikasi_soal.*')
            ->join('soal', 'verifikasi_soal.id_soal', '=', 'soal.id_soal')
            ->join('matakuliah_kbk', 'soal.id_matakuliah', '=', 'matakuliah_kbk.id_matakuliah')
            ->join('matakuliah', 'soal.id_matakuliah', '=', 'matakuliah.id_matakuliah')
            ->join('kurikulum', 'matakuliah.id_kurikulum', '=', 'kurikulum.id_kurikulum')
            ->whereNotNull('verifikasi_soal.evaluasi')
            ->where('matakuliah_kbk.id_kbk', $id_kbk)
            ->where('kurikulum.id_prodi', $id_prodi)
            ->get();

        if (!$kaprodi) {
            return back()->with('failed', 'Data Pimpinan Prodi tidak ditemukan untuk kode prodi: ' . $kode_prodi);
        }
        if ($dataVerif->isEmpty()) {
            return redirect()->back()->with('failed', 'Data Verifikasi tidak ditemukan');
        }

        $pdf = FacadePdf::loadView('berita.beritaSoal', compact('dataVerif', 'kaprodi', 'kajur', 'kbk'));
        return $pdf->stream('berita_acara_verifikasi_soal_' . $kode_prodi . '.pdf');
    }
}
