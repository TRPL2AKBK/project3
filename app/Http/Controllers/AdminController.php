<?php

namespace App\Http\Controllers;

use App\Imports\UserImport;
use App\Models\Dosen;
use App\Models\User;
use Carbon\Carbon;
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
            'nama' => 'required|regex:/^[a-zA-Z0-9\s_]+$/',
            'email' => 'required|email|unique:user',
            'nidn' => 'required|exists:ref_dosen,nidn',
            'password' => 'required|min:8',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $data['name'] = $request->nama;
        $data['email'] = $request->email;
        $data['nidn'] = $request->nidn;
        $data['password'] = Hash::make($request->password);
        $data['id_level'] = $request->id_level ?? 5;;
        $data['created_at'] = Carbon::now();
        $data['updated_at'] = Carbon::now();
        // dd($data);
        User::create($data);

        return redirect()->route('admin.users')->with('success', 'Data berhasil ditambahkan');
    }

    public function edit(Request $request, $id)
    {
        $data = User::find($id);

        return view('admin/edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'nama' => 'required|regex:/^[a-zA-Z0-9\s_]+$/',
            'nidn' => 'required|exists:ref_dosen,nidn',
            'email' => 'required|email|unique:user,email,' . $id,
            'password' => 'sometimes|nullable|min:8',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $data['id_level'] = $request->id_level;
        $data['name'] = $request->nama;
        $data['nidn'] = $request->nidn;
        $data['updated_at'] = Carbon::now();
        if ($request->email) {
            $data['email'] = $request->email;
        }
        if ($request->password) {
            $data['password'] = Hash::make($request->password);
        }

        User::whereId($id)->update($data);

        return redirect()->route('admin.users');
    }

    public function delete(Request $request, $id)
    {
        $data = User::find($id);
        if ($data) {
            $data->delete();
        }

        return redirect()->route('admin.users');
    }
    // }
}
