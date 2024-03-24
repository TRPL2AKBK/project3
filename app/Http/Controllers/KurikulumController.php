<?php

namespace App\Http\Controllers;

use App\Models\Kurikulum;
use Illuminate\Http\Request;

class KurikulumController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $kurikulum = Kurikulum::get();

        return view('admin/dataKurikulum', compact('kurikulum'));
    }
}
