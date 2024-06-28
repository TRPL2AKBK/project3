<?php

namespace App\Http\Controllers\Users;

use App\Models\Kaprodi;
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
        $dataRps = RPS::get();
        $dataSoal = Soal::get();
        $verifSoal = VerifikasiSoal::whereNotNull('evaluasi')->get();
        $verifRps = VerifikasiRPS::whereNotNull('evaluasi')->get();
        return view('kaprodi\dashboard', compact('dataRps', 'dataSoal', 'verifSoal', 'verifRps'));
    }

    // public function create()
    // {
    //     //
    // }
    // public function store(Request $request)
    // {
    //     //
    // }
    // public function show(Kaprodi $kaprodi)
    // {
    //     //
    // }
    // public function edit(Kaprodi $kaprodi)
    // {
    //     //
    // }
    // public function update(Request $request, Kaprodi $kaprodi)
    // {
    //     //
    // }
    // public function destroy(Kaprodi $kaprodi)
    // {
    //     //
    // }
}
