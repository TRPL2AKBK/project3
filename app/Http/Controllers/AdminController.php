<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use App\Models\DosenKBK;
use App\Models\KBK;
use App\Models\MatakuliahKBK;
use App\Models\RPS;
use App\Models\Soal;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dashboard(Request $request)
    {
        $kbk = KBK::get();
        $dosenkbk = DosenKBK::get();
        $matakuliahkbk = MatakuliahKBK::get();
        // dd($dosenkbk);
        return view('admin.dashboard', compact('kbk', 'dosenkbk', 'matakuliahkbk'));
    }

    public function dataDosen()
    {
        $dosen = Dosen::get();
        return view('admin/dataDosen', compact('dosen'));
    }
}
