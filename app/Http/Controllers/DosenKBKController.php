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
            'id_dosen' => 'required',
            'id_kbk' => 'required',
            'id_jabatan_kbk' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $dosenkbk['id_dosen'] = $request->id_dosen;
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

    public function update(Request $request, $id_dosen)
    {
        $validator = Validator::make($request->all(), [
            'id_kbk' => 'required',
            'id_dosen' => 'required',
            'id_jabatan_kbk' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $dosenkbk['id_dosen'] = $request->id_dosen;
        $dosenkbk['id_kbk'] = $request->id_kbk;
        $dosenkbk['id_jabatan_kbk'] = $request->id_jabatan_kbk;

        dosenKBK::updatedosenKBK($id_dosen, $dosenkbk);
        // dd($request->all());

        return redirect()->route('admin.dosenkbk');
    }

    public function destroy(Request $request, $id_dosen)
    {
        $id_dosen = DosenKBK::find($id_dosen);

        if ($id_dosen) {
            $id_dosen->delete();
        }

        return redirect()->route('admin.dosenkbk');
    }
}
