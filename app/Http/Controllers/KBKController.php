<?php

namespace App\Http\Controllers;

use App\Models\KBK;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class KBKController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $kbk = KBK::get();
        return view('admin.dataKBK', compact('kbk'));
    }

    public function create()
    {
        return view('admin/createKBK');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_kbk' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $kbk['nama_kbk'] = $request->nama_kbk;

        KBK::create($kbk);

        return redirect()->route('admin.kbk');
    }

    public function edit(Request $request, $id_kbk)
    {
        $kbk = KBK::find($id_kbk);

        return view('admin/editKBK', compact('kbk'));
    }

    public function update(Request $request, $id_kbk)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'nama_kbk' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $kbk['nama_kbk'] = $request->nama_kbk;

        KBK::updateTahun($id_kbk, $kbk);

        return redirect()->route('admin.kbk');
    }

    public function destroy(Request $request, $id_kbk)
    {
        $kbk = KBK::find($id_kbk);
        if ($kbk) {
            $kbk->delete();
        }

        return redirect()->route('admin.kbk');
    }
}
