<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\DosenKBK;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class DosenKBKController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $dosenkbk = DosenKBK::get();
        // dd($dosenkbk);
        return view('admin.datadosenKBK', compact('dosenkbk'));
    }

    public function create()
    {
        return view('admin/createDosenKBK');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nidn' => 'required',
            'id_kbk' => 'required',
            'id_jabatan_kbk' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $dosenkbk['nidn'] = $request->nidn;
        $dosenkbk['id_kbk'] = $request->id_kbk;
        $dosenkbk['id_jabatan_kbk'] = $request->id_jabatan_kbk;

        dosenKBK::create($dosenkbk);
        // dd($request->all());
        return redirect()->route('admin.dosenkbk');
    }

    public function edit(Request $request, $id_dosenkbk)
    {
        $dosenkbk = DosenKBK::find($id_dosenkbk);
        // dd($dosenkbk);
        return view('admin/editDosenKBK', compact('dosenkbk'));
    }

    public function update(Request $request, $nidn)
    {
        $validator = Validator::make($request->all(), [
            'id_kbk' => 'required',
            'nidn' => 'required',
            'id_jabatan_kbk' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $dosenkbk['nidn'] = $request->nidn;
        $dosenkbk['id_kbk'] = $request->id_kbk;
        $dosenkbk['id_jabatan_kbk'] = $request->id_jabatan_kbk;

        dosenKBK::updatedosenKBK($nidn, $dosenkbk);
        // dd($request->all());

        return redirect()->route('admin.dosenkbk');
    }

    public function destroy(Request $request, $nidn)
    {
        $nidn = DosenKBK::find($nidn);

        if ($nidn) {
            $nidn->delete();
        }

        return redirect()->route('admin.dosenkbk');
    }
}
