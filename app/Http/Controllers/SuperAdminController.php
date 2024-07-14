<?php

namespace App\Http\Controllers;

use App\Imports\UserImport;
use App\Models\RPS;
use App\Models\Soal;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Spatie\Permission\Models\Role;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Events\AfterImport;

class SuperAdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $dataRps = RPS::get();
        $dataSoal = Soal::get();
        return view('super_admin.dashboard', compact('dataRps', 'dataSoal'));
    }

    public function dataUser()
    {
        $data = User::orderByDesc('id')->get();

        return view('admin/dataUser', compact('data'));
    }

    public function create()
    {
        $roles = Role::all();
        return view('admin/create', compact('roles'));
    }

    public function importFile(Request $request)
    {
        return view('admin/importfile');
    }

    public function importExcel(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'import_file' => 'required|file|mimes:xlsx|max:25000'
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        Excel::import(new UserImport, $request->file('import_file'));
        // dd($request);
        return redirect()->route('users')->with('success', 'Data berhasil di tambahkan');
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama' => 'required|regex:/^[a-zA-Z0-9\s_]+$/',
            'email' => 'required|email|unique:user,email',
            'nidn' => 'required|exists:dosen,nidn',
            'password' => 'required|min:8',
            'roles' => 'required|array',
            'roles.*' => 'exists:roles,name',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator);
        }

        $data = [
            'name' => $request->nama,
            'email' => $request->email,
            'nidn' => $request->nidn,
            'password' => Hash::make($request->password),
        ];

        // Create the user
        $user = User::create($data);

        // Assign role
        foreach ($request->roles as $role) {
            $user->assignRole($role);
        }
        return redirect()->route('users')->with('success', 'Data berhasil ditambahkan');
    }


    public function edit(Request $request, $id)
    {
        $data = User::find($id);
        $roles = Role::all();
        return view('admin/edit', compact('data', 'roles'));
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'nama' => 'required|regex:/^[a-zA-Z0-9\s_]+$/',
            'email' => 'required|email|unique:user,email,' . $id,
            'nidn' => 'required|exists:dosen,nidn',
            'password' => 'nullable|min:8',
            'roles.*' => 'exists:roles,name',
        ]);

        // Tambahkan validasi khusus untuk memeriksa apakah roles tidak ada atau kosong
        $validator->after(function ($validator) use ($request) {
            if (!$request->has('roles') || count($request->roles) === 0) {
                $validator->errors()->add('roles', 'Pilih setidaknya satu peran.');
            }
        });

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator);
        }

        $user = User::findOrFail($id);
        $user->name = $request->nama;
        $user->email = $request->email;
        $user->nidn = $request->nidn;
        if ($request->filled('password')) {
            $user->password = Hash::make($request->password);
        }

        $user->save();

        // Menghapus semua peran yang sebelumnya ditetapkan
        $user->roles()->detach();

        // Menetapkan peran-peran yang baru
        foreach ($request->roles as $role) {
            $user->assignRole($role);
        }

        return redirect()->route('users')->with('success', 'Data berhasil diperbarui');
    }



    public function delete($id)
    {
        $user = User::find($id);

        // Pastikan pengguna ditemukan
        if (!$user) {
            return redirect()->route('users')->with('error', 'User tidak ditemukan');
        }

        // Cek apakah pengguna memiliki peran superadmin
        if ($user->hasRole('super_admin')) {
            return redirect()->route('users')->with('error', 'Akun superadmin tidak bisa dihapus');
        }

        // Lanjutkan dengan penghapusan
        $user->delete();

        return redirect()->route('users')->with('success', 'User berhasil dihapus');
    }
}
