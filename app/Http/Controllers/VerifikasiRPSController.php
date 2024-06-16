<?php

namespace App\Http\Controllers;

use App\Models\RPS;
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
        $verifData = VerifikasiRPS::with('rps.matakuliah')->orderByDesc('id_verif_rps')->get();

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
        $validator = Validator::make($request->all(), [
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator);
        }

        if (auth()->user()->id_level == 2 || auth()->user()->id_level == 1) {
            $verifData['verifikator2'] = Auth::id();
            $verifData['status2'] = $request->status;
            $verifData['komentar2'] = $request->komentar ?? null; // Menambahkan komentar jika ada
            $verifData['tanggal2'] = now();
        } elseif (auth()->user()->id_level == 3) {
            $verifData['verifikator1'] = Auth::id();
            $verifData['status1'] = $request->status;
            $verifData['komentar1'] = $request->komentar ?? null; // Menambahkan komentar jika ada
            $verifData['tanggal1'] = now();
        } else {
            return redirect()->back()->withErrors('Verifikasi hanya boleh dilakukan Kaprodi dan Ketua KBK');
        }

        VerifikasiRPS::updateVerifikasiRPS($id_verif_rps, $verifData);

        return redirect()->route('verifikasi.verifrps');
    }

    public function destroy(VerifikasiRPS $verifikasiRPS)
    {
        //
    }
}
