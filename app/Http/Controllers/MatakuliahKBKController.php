<?php

namespace App\Http\Controllers;

use App\Models\KBK;
use App\Models\Kurikulum;
use App\Models\Matakuliah;
use App\Models\MatakuliahKBK;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller;

class MatakuliahKBKController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $matakuliahkbk = MatakuliahKBK::get();
        return view('admin.dataMatakuliahKBK', compact('matakuliahkbk'));
    }

    public function create()
    {
        $matakuliah = Matakuliah::get();
        $kbk = KBK::get();
        $kurikulum = Kurikulum::get();
        // dd($matakuliah);
        return view('admin/createMatakuliahKBK', compact('matakuliah', 'kbk', 'kurikulum'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'id_kbk' => 'required',
            'id_kurikulum' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $matakuliahkbk['id_matakuliah'] = $request->id_matakuliah;
        $matakuliahkbk['id_kbk'] = $request->id_kbk;
        $matakuliahkbk['id_kurikulum'] = $request->id_kurikulum;

        MatakuliahKBK::create($matakuliahkbk);
        return redirect()->route('admin.matakuliahkbk');
    }

    public function edit(Request $request, $id_matakuliahkbk)
    {
        $matakuliahkbk = MatakuliahKBK::find($id_matakuliahkbk);
        $matakuliah = Matakuliah::get();
        $kbk = KBK::get();
        $kurikulum = Kurikulum::get();
        return view('admin/editMatakuliahKBK', compact('matakuliahkbk', 'matakuliah', 'kbk', 'kurikulum'));
    }

    public function update(Request $request, $id_matakuliah)
    {
        $validator = Validator::make($request->all(), [
            'id_kbk' => 'required',
            // 'semester' => 'required',
            'id_matakuliah' => 'required',
            'id_kurikulum' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $matakuliahkbk['id_matakuliah'] = $request->id_matakuliah;
        $matakuliahkbk['id_kbk'] = $request->id_kbk;
        $matakuliahkbk['id_kurikulum'] = $request->id_kurikulum;

        MatakuliahKBK::updateMatakuliahKBK($id_matakuliah, $matakuliahkbk);
        // dd($request->all());

        return redirect()->route('admin.matakuliahkbk');
    }

    public function destroy(Request $request, $id_matakuliah)
    {
        $id_matakuliah = MatakuliahKBK::find($id_matakuliah);

        if ($id_matakuliah) {
            $id_matakuliah->delete();
        }

        return redirect()->route('admin.matakuliahkbk');
    }
}
