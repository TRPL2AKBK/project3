<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Imports\DosenKBKImport;
use App\Models\DosenKBK;
use App\Models\JabatanKBK;
use App\Models\KBK;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Validator;

class DosenKBKController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $dosenkbk = DosenKBK::orderByDesc('id_dosenkbk')->get();
        // dd($dosenkbk);
        return view('admin.datadosenKBK', compact('dosenkbk'));
    }

    public function importFile(Request $request)
    {
        return view('admin/importfileDosenKbk');
    }

    public function importExcel(Request $request)
    {
        // dd($request
        // \Log::info('Request received:', $request->all());
        $validator = Validator::make($request->all(), [
            'import_file' => 'required|file|mimes:xlsx|max:25000'
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        Excel::import(new DosenKBKImport, $request->file('import_file'));
        // dd($request);
        return redirect()->route('admin.dosenkbk')->with('success', 'Data berhasil di tambahkan');
    }


    public function create()
    {
        $kbk = KBK::get();
        $jabatan = JabatanKBK::get();
        return view('admin/createDosenKBK', compact('kbk', 'jabatan'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nidn' => 'required|max:11|unique:dosen_kbk,nidn|exists:dosen,nidn',
            'id_kbk' => 'required',
            'id_jabatan_kbk' => 'required',
        ], [
            'nidn.max' => 'NIDN maksimal 11 angka',
            'nidn.unique' => 'NIDN "' . $request->nidn . '" sudah terdaftar',
            'nidn.exists' => 'NIDN tidak ditemukan',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $dosenkbk['nidn'] = $request->nidn;
        $dosenkbk['id_kbk'] = $request->id_kbk;
        $dosenkbk['id_jabatan_kbk'] = $request->id_jabatan_kbk;

        dosenKBK::create($dosenkbk);
        // dd($request->all());
        return redirect()->route('admin.dosenkbk')->with('success', 'Data berhasil di tambahkan');
    }

    public function edit(Request $request, $id_dosenkbk)
    {
        $kbk = KBK::get();
        $jabatan = JabatanKBK::get();
        $dosenkbk = DosenKBK::find($id_dosenkbk);
        // dd($dosenkbk);
        return view('admin/editDosenKBK', compact('dosenkbk', 'kbk', 'jabatan'));
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

        return redirect()->route('admin.dosenkbk')->with('success', 'Data berhasil di ubah');
    }

    public function destroy(Request $request, $nidn)
    {
        $nidn = DosenKBK::find($nidn);

        if ($nidn) {
            $nidn->delete();
        }

        return redirect()->route('admin.dosenkbk')->with('success', 'Data berhasil di hapus');
    }
}
