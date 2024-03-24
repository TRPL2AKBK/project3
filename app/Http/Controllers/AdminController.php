<?php

namespace App\Http\Controllers;

use App\Imports\UserImport;
use App\Models\Dosen;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;


class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dashboard(Request $request)
    {
        return view('admin/dashboard');
    }

    public function dataUser()
    {
        $data = User::get();

        return view('admin/dataUser', compact('data'));
    }

    public function dataDosen()
    {
        $dosen = Dosen::get();
        return view('admin/dataDosen', compact('dosen'));
    }

    public function create()
    {
        return view('admin/create');
    }

    public function importFile(Request $request)
    {
        return view('admin/importfile');
    }

    public function importExcel(Request $request)
    {
        $request->validate([
            'import_file' => [
                'required',
                'file'
            ]
        ]);

        Excel::import(new UserImport, $request->file('import_file'));

        return redirect()->route('admin.users')->with('status', 'Data berhasil di tambahkan');
    }

    public function store(Request $request)
    {
        //dd($request->all()); //untuk mengecek request
        $validator = Validator::make($request->all(), [
            'nama' => 'required',
            'email' => 'required|email|unique:user',
            'password' => 'required',

        ]);

        if ($validator->fails()) return redirect()->back()->withErrors($validator);

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
        //dd($request->all());

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

        return redirect()->route('admin.users');
    }

    public function delete(Request $request, $id)
    {
        $data = User::find($id); //mencari data berdasarkan id
        if ($data) {
            $data->delete();
        }

        return redirect()->route('admin.users');
    }
    // }
}
