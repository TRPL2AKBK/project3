<?php

namespace App\Http\Controllers;

use App\Models\Matakuliah;
use Illuminate\Routing\Controller;

class MatakuliahController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $matakuliah = Matakuliah::get();

        return view('admin/dataMatakuliah', compact('matakuliah'));
    }
}
