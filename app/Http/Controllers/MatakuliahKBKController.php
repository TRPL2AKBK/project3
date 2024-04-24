<?php

namespace App\Http\Controllers;

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
        // dd($matakuliahkbk);
        return view('admin.dataMatakuliahKBK', compact('matakuliahkbk'));
    }

    public function create()
    {
        return view('admin/createMatakuliahKBK');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id_matakuliah' => 'required',
            'id_kbk' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $matakuliahkbk['id_matakuliah'] = $request->id_matakuliah;
        $matakuliahkbk['id_kbk'] = $request->id_kbk;

        MatakuliahKBK::create($matakuliahkbk);
        // dd($request->all());
        return redirect()->route('admin.matakuliahkbk');
    }

    public function edit(Request $request, $id_matakuliahkbk)
    {
        $matakuliahkbk = MatakuliahKBK::find($id_matakuliahkbk);
        // dd($matakuliahkbk);
        return view('admin/editMatakuliahKBK', compact('matakuliahkbk'));
    }

    public function update(Request $request, $id_matakuliah)
    {
        $validator = Validator::make($request->all(), [
            'id_kbk' => 'required',
            'id_matakuliah' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $matakuliahkbk['id_matakuliah'] = $request->id_matakuliah;
        $matakuliahkbk['id_kbk'] = $request->id_kbk;

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
