<?php

namespace App\Http\Controllers;

use App\Models\DosenPengampu;
use Illuminate\Http\Request;

class DosenPengampuController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $pengampu = DosenPengampu::get();

        return view('admin/dataPengampu', compact('pengampu'));
    }
}
