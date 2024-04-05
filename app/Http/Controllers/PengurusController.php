<?php

namespace App\Http\Controllers;

use App\Models\Pengurus;
use Illuminate\Http\Request;

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
        return view('pengurus\dashboard');
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
