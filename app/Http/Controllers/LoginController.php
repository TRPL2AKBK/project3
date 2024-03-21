<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function login_proses(Request $request)
    {
        // dd($request->all());

        $request->validate([
            'email'     => 'required',
            'password'  => 'required',
        ]);

        $data = [
            'email'     => $request->email,
            'password'  => $request->password,
            // 'id_role'   => $request->id_role, // Menambahkan id_role ke array data
        ];

        if (Auth::attempt($data)) {
            // Otentikasi berhasil, dapatkan id_role pengguna yang terotentikasi
            //$id_level = Auth::user()->id_level;
            // Berdasarkan nilai id_role, arahkan pengguna ke rute yang sesuai
            switch (Auth::user()->id_level) {
                case 1: //Admin
                    // Jika id_role adalah 1, arahkan ke halaman dashboard admin
                    return redirect()->route('admin.dashboard');
                    break;
                case 2: //KBK
                    // Jika id_role adalah 2, arahkan ke halaman dashboard user biasa
                    return redirect()->route('pengurus.dashboard');
                    break;
                case 3: //Kaprodi
                    // Jika id_role adalah 1, arahkan ke halaman dashboard admin
                    return redirect()->route('kaprodi.dashboard');
                    break;
                case 4: //Dosen
                    // Jika id_role adalah 2, arahkan ke halaman dashboard user biasa
                    return redirect()->route('dosen.dashboard');
                    break;
                case 5: //User
                    // Jika id_role adalah 1, arahkan ke halaman dashboard admin
                    return redirect()->route('user.dashboard');
                    break;
                default:
                    // Jika id_role tidak sesuai dengan yang diharapkan, arahkan ke halaman tertentu
                    return redirect()->route('login')->with('failed', 'Anda tidak memiliki akses yang sesuai');
            }
        } else {
            // Otentikasi gagal, arahkan pengguna kembali ke halaman login dengan pesan kesalahan
            return redirect()->back()->withInput()->with('failed', 'Email atau Password Salah');
        }

        // $data = [
        //     'email'     => $request->email,
        //     'password'  => $request->password,

        // ];

        // if (Auth::attempt($data)) {
        //     return redirect()->route('home');
        // } else {
        //     return redirect()->route('login')->with('failed', 'Email atau Password Salah');
        // }
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('login')->with('success', 'Kamu Telah Logout');
    }
}
