<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use App\Models\Prodi;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class HomeController extends Controller
{
    public function dashboard(Request $request)
    {
        // dd($request->all());
        $dataProdi = Prodi::get();
        $dataDosen = Dosen::paginate(10);
        return view('admin/dashboard', compact('dataDosen', 'dataProdi'));
    }



    public function dataUser()
    {
        $data = User::get();

        return view('admin/dataUser', compact('data'));
    }

    public function create()
    {
        return view('admin/create');
    }

    public function store(Request $request)
    {
        //dd($request->all()); //untuk mengecek request
        $validator = Validator::make($request->all(), [
            'nama' => 'required',
            'email' => 'required|email:rfc,dns',
            'password' => 'required',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $data['name'] = $request->nama;
        $data['email'] = $request->email;
        $data['password'] = Hash::make($request->password);
        $data['id_level'] = $request->id_level;

        User::create($data);

        return redirect()->route('admin.users');
        // 'admin.user.create'
    }

    public function edit(Request $request, $id)
    {
        $data = User::find($id); //mencari data berdasarkan id
        //dd($data); //untuk mengecek request

        return view('admin/edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        //dd($request->all()); //untuk mengecek request

        $validator = Validator::make($request->all(), [
            'nama' => 'required',
            'email' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $data['id_level'] = $request->id_level;
        $data['name'] = $request->nama;
        $data['email'] = $request->email;

        if ($request->password) {
            $data['password'] = Hash::make($request->password);
        }

        User::whereId($id)->update($data);

        return redirect()->route('admin.dataUser');
    }

    public function delete(Request $request, $id)
    {


        $data = User::find($id); //mencari data berdasarkan id
        if ($data) {
            $data->delete();
        }

        return redirect()->route('admin.dataUser');
    }

    // Manipulasi data Prodi

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
            'jenjang' => 'required',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $prodi['kode_prodi'] = $request->kode_prodi;
        $prodi['prodi'] = $request->prodi;
        $prodi['id_jurusan'] = $request->id_jurusan;
        $prodi['jenjang'] = $request->jenjang;

        Prodi::create($prodi);

        return redirect()->route('admin.dashboard');
        // 'admin.user.create'
    }

    public function editProdi(Request $request, $id)
    {
        $prodi = Prodi::find($id); //mencari data berdasarkan id
        //dd($data); //untuk mengecek request

        return view('admin/editProdi', compact('prodi'));
    }

    public function updateProdi(Request $request, $id)
    {
        //dd($request->all()); //untuk mengecek request

        $validator = Validator::make($request->all(), [
            'kode_prodi' => 'required',
            'prodi' => 'required',
            'id_jurusan' => 'required',
            'jenjang' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        // data baru
        $prodi['kode_prodi'] = $request->kode_prodi;
        $prodi['prodi'] = $request->prodi;
        $prodi['id_jurusan'] = $request->id_jurusan;
        $prodi['jenjang'] = $request->jenjang;
        unset($prodi['updated_at']);
        Prodi::updateProdi($id, $prodi);
        // Prodi::whereId($id)->updateProdi($prodi);

        return redirect()->route('admin.dashboard');
    }

    public function deleteProdi(Request $request, $id)
    {


        $prodi = Prodi::find($id); //mencari data berdasarkan id
        if ($prodi) {
            $prodi->delete();
        }

        return redirect()->route('admin.dataUser');
    }
}
