<?php

namespace App\Http\Controllers;

use App\Models\RPS;
use App\Models\Soal;
use App\Models\User;
use App\Models\VerifikasiRPS;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class VerifikasiRPSController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {

        $verifData = VerifikasiRPS::with('rps.pengembang')->orderByDesc('id_verif_rps')->get();

        foreach ($verifData as $verifikasi) {
            $rps = $verifikasi->rps;

            if ($rps) {
                $namaMatakuliah = $rps->matakuliah->nama_matakuliah;
            }
        }
        return view('admin/dataVerifikasiRPS', compact('verifData'));
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

            return redirect()->route('verifikasi.verifrps')->with('success', 'Data berhasil diperbarui');
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
