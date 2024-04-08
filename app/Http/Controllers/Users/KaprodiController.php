<?php

namespace App\Http\Controllers\Users;

use App\Models\Kaprodi;
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
        return view('kaprodi\dashboard');
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
