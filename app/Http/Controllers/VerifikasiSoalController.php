<?php

namespace App\Http\Controllers;


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

    public function update(Request $request, $id_verif_soal)
    {
        $validator = Validator::make($request->all(), [
            'status' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        if (auth()->user()->id_level == 2) {
            $verifData['verifikator2'] = Auth::id();
            $verifData['status2'] = $request->status;
            $verifData['komentar2'] = $request->komentar;
            $verifData['tanggal2'] = now();
        } elseif (auth()->user()->id_level == 3) {
            $verifData['verifikator1'] = Auth::id();
            $verifData['status1'] = $request->status;
            $verifData['komentar1'] = $request->komentar;
            $verifData['tanggal1'] = now();
        }

        VerifikasiSoal::updateVerifikasiSoal($id_verif_soal, $verifData);
        // dd($request->all());

        return redirect()->route('verifikasi.verifsoal');
    }

    public function destroy(VerifikasiSoal $verifikasiSoal)
    {
        //
    }
}
