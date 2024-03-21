<?php

namespace App\Http\Controllers;

use App\Models\Jurusan;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Validator;

class JurusanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dataJurusan()
    {
        $jurusan = Jurusan::get();

        return view('admin/dataJurusan', compact('jurusan'));
    }
    public function index()
    {
        //
    }

    public function createJurusan()
    {
        return view('admin/createJurusan');
    }

    public function storeJurusan(Request $request)
    {
        //dd($request->all()); //untuk mengecek request
        $validator = Validator::make($request->all(), [
            'kode_jurusan' => 'required',
            'jurusan' => 'required',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $jurusan['kode_jurusan'] = $request->kode_jurusan;
        $jurusan['jurusan'] = $request->jurusan;

        Jurusan::create($jurusan);
        return redirect()->route('admin.jurusan');
    }

    public function editJurusan(Request $request, $id)
    {
        $jurusan = Jurusan::find($id);
        return view('admin/editJurusan', compact('jurusan'));
    }

    public function updateJurusan(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'kode_jurusan' => 'required',
            'jurusan' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        // data baru
        $jurusan['kode_jurusan'] = $request->kode_jurusan;
        $jurusan['jurusan'] = $request->jurusan;
        unset($jurusan['updated_at']);
        Jurusan::updateJurusan($id, $jurusan);
        return redirect()->route('admin.jurusan');
    }

    public function deleteJurusan(Request $request, $id)
    {

        $jurusan = Jurusan::find($id);
        if ($jurusan) {
            $jurusan->delete();
        }

        return redirect()->route('admin.jurusan');
    }
}
