<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Tahun;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class TahunController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dataTahun()
    {
        $tahun = Tahun::get();

        return view('admin.dataTahun', compact('tahun'));
    }
    public function createTahun()
    {
        return view('admin/createTahun');
    }

    public function storeTahun(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'smt_thn_akd' => 'required',
            'status' => 'required|in:0,1',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $tahun['smt_thn_akd'] = $request->smt_thn_akd;
        $tahun['status'] = $request->status;

        Tahun::create($tahun);

        return redirect()->route('admin.tahun');
    }

    public function editTahun(Request $request, $id_smt_thn_akd)
    {
        $tahun = Tahun::find($id_smt_thn_akd);

        return view('admin/editTahun', compact('tahun'));
    }

    public function updateTahun(Request $request, $id_smt_thn_akd)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'smt_thn_akd' => 'required',
            'status' => 'required|in:0,1',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $tahun['smt_thn_akd'] = $request->smt_thn_akd;
        $tahun['status'] = $request->status;

        Tahun::updateTahun($id_smt_thn_akd, $tahun);

        return redirect()->route('admin.tahun');
    }

    public function deleteTahun(Request $request, $id_smt_thn_akd)
    {
        $tahun = Tahun::find($id_smt_thn_akd);
        if ($tahun) {
            $tahun->delete();
        }

        return redirect()->route('admin.tahun');
    }
}
