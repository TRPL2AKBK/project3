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
        $prodi = Prodi::get();
        $data = User::get();
        $dataDosen = Dosen::get();
        return view('admin/dashboard', compact('dataDosen', 'data', 'prodi'));
    }



    public function index()
    {
        $data = User::get();

        return view('admin/index', compact('data'));
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

        return redirect()->route('admin.index');
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

        return redirect()->route('admin.index');
    }

    public function delete(Request $request, $id)
    {
        $data = User::find($id); //mencari data berdasarkan id

        if ($data) {
            $data->delete();
        }

        return redirect()->route('admin.index');

        $prodi = Prodi::find($id);
    }
}
