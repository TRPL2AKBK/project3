<?php

namespace App\Http\Controllers;

use App\Models\PimpinanProdi;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Validator;

class PimpinanProdiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $kaprodi = PimpinanProdi::get();

        return view('admin/dataKaprodi', compact('kaprodi'));
    }

    //     public function createKaprodi()
    //     {
    //         return view('admin/createJurusan');
    //     }

    //     public function storeKaprodi(Request $request)
    //     {
    //         $validator = Validator::make($request->all(), [
    //             'kode_jurusan' => 'required',
    //             'jurusan' => 'required',

    //         ]);

    //         if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

    //         $jurusan['kode_jurusan'] = $request->kode_jurusan;
    //         $jurusan['jurusan'] = $request->jurusan;

    //         PimpinanJurusan::create($jurusan);
    //         return redirect()->route('admin.jurusan');
    //     }

    //     public function editKaprodi(Request $request, $id_jurusan)
    //     {
    //         $jurusan = PimpinanJurusan::find($id_jurusan);
    //         return view('admin/editJurusan', compact('jurusan'));
    //     }

    //     public function updateKaprodi(Request $request, $id_jurusan)
    //     {
    //         $validator = Validator::make($request->all(), [
    //             'kode_jurusan' => 'required',
    //             'jurusan' => 'required',
    //         ]);

    //         if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

    //         $jurusan['kode_jurusan'] = $request->kode_jurusan;
    //         $jurusan['jurusan'] = $request->jurusan;
    //         PimpinanJurusan::updateJurusan($id_jurusan, $jurusan);
    //         return redirect()->route('admin.jurusan');
    //     }

    //     public function deleteKaprodi(Request $request, $id_jurusan)
    //     {

    //         $jurusan = PimpinanJurusan::find($id_jurusan);
    //         if ($jurusan) {
    //             $jurusan->delete();
    //         }

    //         return redirect()->route('admin.jurusan');
    //     }
}
