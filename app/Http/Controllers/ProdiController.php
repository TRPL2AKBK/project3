<?php

namespace App\Http\Controllers;

use App\Models\Prodi;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class ProdiController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $dataProdi = Prodi::get();

        return view('admin/dashboard', compact('dataProdi'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $prodi = Prodi::find($id); //mencari data berdasarkan id

        if ($prodi) {
            $prodi->delete();
        }
        return redirect()->route('admin.dashboard');
    }
}
