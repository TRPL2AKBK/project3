<?php

namespace App\Http\Controllers\Users;

use App\Models\DosenPengampu;
use App\Models\Pengurus;
use App\Models\RPS;
use App\Models\Soal;
use App\Models\VerifikasiRPS;
use App\Models\VerifikasiSoal;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class PengurusController extends Controller
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
        $matakuliah = DosenPengampu::whereHas('tahun', function ($query) {
            $query->where('status', 1);
        })->count();
        $dataRps = RPS::get();
        $dataSoal = Soal::get();
        $verifSoal = VerifikasiSoal::whereNotNull('evaluasi')->get();
        $verifRps = VerifikasiRPS::whereNotNull('evaluasi')->get();
        // dd($dosenkbk);
        return view('pengurus\dashboard', compact('dataRps', 'dataSoal', 'verifSoal', 'verifRps', 'matakuliah'));
    }

    // public function create()
    // {
    //     //
    // }

    // public function store(Request $request)
    // {
    //     //
    // }

    // public function show(Pengurus $pengurus)
    // {
    //     //
    // }

    // public function edit(Pengurus $pengurus)
    // {
    //     //
    // }

    // public function update(Request $request, Pengurus $pengurus)
    // {
    //     //
    // }
    // function destroy(Pengurus $pengurus)
    // {
    //     //
    // }
}
