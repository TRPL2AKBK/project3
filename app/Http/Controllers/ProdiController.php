<?php

namespace App\Http\Controllers;

use App\Models\Prodi;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Validator;


class ProdiController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dataProdi()
    {
        $prodi = Prodi::get();

        return view('admin/dataProdi', compact('prodi'));
    }

    public function createProdi()
    {
        return view('admin/createProdi');
    }

    public function storeProdi(Request $request)
    {
        //dd($request->all()); //untuk mengecek request
        $validator = Validator::make($request->all(), [
            'kode_prodi' => 'required',
            'prodi' => 'required',
            'id_jurusan' => 'required',
            'id_jenjang' => 'required',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $prodi['kode_prodi'] = $request->kode_prodi;
        $prodi['prodi'] = $request->prodi;
        $prodi['id_jurusan'] = $request->id_jurusan;
        $prodi['id_jenjang'] = $request->id_jenjang;

        Prodi::create($prodi);

        return redirect()->route('admin.prodis');
    }

    public function editProdi(Request $request, $id_prodi)
    {
        $prodi = Prodi::find($id_prodi);
        //dd($data); //untuk mengecek request

        return view('admin/editProdi', compact('prodi'));
    }

    public function updateProdi(Request $request, $id_prodi)
    {
        $validator = Validator::make($request->all(), [
            'kode_prodi' => 'required',
            'prodi' => 'required',
            'id_jurusan' => 'required',
            'id_jenjang' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        // data baru
        $prodi['kode_prodi'] = $request->kode_prodi;
        $prodi['prodi'] = $request->prodi;
        $prodi['id_jurusan'] = $request->id_jurusan;
        $prodi['id_jenjang'] = $request->id_jenjang;
        // unset($prodi['updated_at']);
        Prodi::updateProdi($id_prodi, $prodi);

        return redirect()->route('admin.prodis');
    }

    public function deleteProdi(Request $request, $id_prodi)
    {


        $prodi = Prodi::find($id_prodi); //mencari data berdasarkan id
        if ($prodi) {
            $prodi->delete();
        }

        return redirect()->route('admin.prodis');
    }
}
