<?php

namespace App\Http\Controllers;

use App\Models\ProposalTa;
use Illuminate\Http\Request;

class ProposalTaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $proposal = ProposalTa::get();
        return view('admin/dataProposalTa', compact('proposal'));
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
    public function show(ProposalTa $proposalTa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ProposalTa $proposalTa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ProposalTa $proposalTa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ProposalTa $proposalTa)
    {
        //
    }
}