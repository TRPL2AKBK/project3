<?php

namespace App\Http\Controllers;

use App\Models\DosenKBK;
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
        $dosenkbk = DosenKBK::get();
        return view('admin/createKBK', compact('dosenkbk'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_kbk' => 'required',
            'kode_kbk' => 'required',
            'ketua' => 'required',
            'sekretaris' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $kbk['nama_kbk'] = $request->nama_kbk;
        $kbk['kode_kbk'] = $request->kode_kbk;
        $kbk['ketua_kbk'] = $request->ketua;
        $kbk['sekretaris_kbk'] = $request->sekretaris;

        KBK::create($kbk);
        // dd($request->all());
        return redirect()->route('admin.kbk');
    }

    public function edit(Request $request, $id_kbk)
    {
        $kbk = KBK::find($id_kbk);
        $dosenkbk = DosenKBK::get();
        return view('admin/editKBK', compact('kbk', 'dosenkbk'));
    }

    public function update(Request $request, $id_kbk)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'nama_kbk' => 'required',
            'kode_kbk' => 'required',
            'ketua' => 'required',
            'sekretaris' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $kbk['nama_kbk'] = $request->nama_kbk;
        $kbk['kode_kbk'] = $request->kode_kbk;
        $kbk['ketua_kbk'] = $request->ketua;
        $kbk['sekretaris_kbk'] = $request->sekretaris;

        KBK::updateKBK($id_kbk, $kbk);

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
