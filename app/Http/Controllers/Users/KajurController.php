<?php

namespace App\Http\Controllers\Users;

use App\Models\DosenPengampu;
use App\Models\RPS;
use App\Models\Soal;
use App\Models\VerifikasiRPS;
use App\Models\VerifikasiSoal;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class KajurController extends Controller
{
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
        return view('kajur\dashboard', compact('dataRps', 'dataSoal', 'verifSoal', 'verifRps', 'matakuliah'));
    }
}
