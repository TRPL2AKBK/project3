<?php

namespace App\Http\Controllers;


use App\Models\Soal;
use App\Models\VerifikasiSoal;
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
        $verifData = VerifikasiSoal::with('soal.matakuliah')->orderByDesc('id_verif_soal')->get();

        foreach ($verifData as $verifikasi) {
            $soal = $verifikasi->soal;
            if ($soal) {
                $namaMatakuliah = $soal->matakuliah->nama_matakuliah;
            }
        }
        return view('admin/dataVerifikasiSoal', compact('verifData'));
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
    //     $validator = Validator::make($request->all(), [
    //         'evaluasi' => 'required',
    //     ]);

    //     if ($validator->fails()) {
    //         return redirect()->back()->withInput()->withErrors($validator);
    //     }

    //     $verifData['evaluasi'] = $request->evaluasi;
    //     $verifData['tanggal'] = now();

    //     VerifikasiSoal::updateVerifikasiSoal($id_verif_soal, $verifData);

    //     return redirect()->route('verifikasi.verifsoal');
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

        // Temukan data Verifikasisoal berdasarkan id_verif_soal
        $verifData = VerifikasiSoal::find($id_verif_soal);

        // Jika data Verifikasisoal tidak ditemukan, kembalikan respon error
        if (!$verifData) {
            return redirect()->route('verifikasi.verifsoal')->with('error', 'Data Verifikasisoal tidak ditemukan');
        }

        // Periksa apakah id_soal ada di dalam Verifikasisoal
        $id_soal = $verifData->id_soal;

        if ($id_soal) {
            // Data untuk update Verifikasisoal
            $verifData->evaluasi = $request->evaluasi;
            $verifData->tanggal = now();

            // Data untuk update soal
            $soalData = [
                'evaluasi' => $request->evaluasi,
            ];

            // Lakukan update pada Verifikasisoal dan soal
            Soal::updateSoal($id_soal, $soalData);
            $verifData->save();

            return redirect()->route('verifikasi.verifsoal')->with('success', 'Data berhasil diupdate');
        }

        return redirect()->route('verifikasi.verifsoal')->with('error', 'id_soal tidak ditemukan di Verifikasisoal');
    }

    public function destroy($id_verif_soal)
    {
        $verifData = VerifikasiSoal::find($id_verif_soal);

        $verifData->delete();
        return redirect()->route('verifikasi.verifsoal')->with('success', 'Data berhasil dihapus');
    }
}
