<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Mail\ResetPasswordMail;
use App\Models\PasswordResetToken;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;


class LoginController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function forgot_password()
    {
        return view('auth.forgot-password');
    }

    public function forgot_password_proses(Request $request)
    {
        // dd($request->all());
        $customMessage = [
            'email.required' => 'Email tidak boleh kosong',
            'email.email' => 'Email tidak valid',
            'email.exists' => 'Email tidak terdaftar',
        ];

        $request->validate([
            'email'     => 'required|email|exists:user,email',
        ], $customMessage);

        $token = Str::random(60);

        PasswordResetToken::updateOrCreate(
            [
                'email' => $request->email,
            ],
            [
                'email' => $request->email,
                'token' => $token,
                'created_at' => now(),
            ]
        );

        // Log::info('Sending reset password email to: ' . $request->email);
        // Log::info('Reset password token: ' . $token);

        Mail::to($request->email)->send(new ResetPasswordMail($token));

        return redirect()->route('forgot-password')->with('success', 'Check your email for a password reset link.');
    }

    public function validasi_forgot_password(Request $request, $token)
    {
        $tokenData = PasswordResetToken::where('token', $token)->get();

        $passwordResetToken = $tokenData->first();

        if ($passwordResetToken) {
            $email = $passwordResetToken->email;
            Log::info('Email found: ' . $email);

            return view('auth.validasi-token', compact('token', 'email'));
        } else {
            Log::info('Email not found for token: ' . $token);
            return redirect()->route('login')->with('failed', 'Token tidak valid');
        }
    }

    public function validasi_forgot_password_proses(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'email' => 'required|email',
            'password' => 'required',
        ]);

        Log::info('Received token: ' . $request->token);
        Log::info('Received email: ' . $request->email);

        $token = PasswordResetToken::where('token', $request->token)
            ->where('email', $request->email)
            ->first();

        if (!$token) {
            Log::info('Token not found or does not match email');
            return redirect()->route('login')->with('failed', 'Token tidak valid dengan');
        }

        $user = User::where('email', $request->email)->first();

        if (!$user) {
            Log::info('User not found');
            return redirect()->route('login')->with('failed', 'Email tidak terdaftar');
        }

        Log::info('Resetting password for user: ' . $user->email);

        $user->password = Hash::make($request->password);
        if ($user->save()) {
            Log::info('Password reset for user: ' . $user->email);
        } else {
            Log::error('Failed to reset password for user: ' . $user->email);
            return redirect()->route('login')->with('failed', 'Gagal mereset password');
        }

        $token->delete();

        return redirect()->route('login')->with('success', 'Password berhasil direset');
    }

    public function login_proses(Request $request)
    {
        $request->validate([
            'email'     => 'required|email',
            'password'  => 'required',
        ]);

        $data = [
            'email'     => $request->email,
            'password'  => $request->password,
        ];

        if (Auth::attempt($data)) {
            $user = Auth::user();

            if ($user->hasRole('admin')) {
                return redirect()->route('admin.dashboard');
            } elseif ($user->hasRole('pengurus_kbk')) {
                return redirect()->route('pengurus.dashboard');
            } elseif ($user->hasRole('pimpinan_prodi')) {
                return redirect()->route('kaprodi.dashboard');
            } elseif ($user->hasRole('pimpinan_jurusan')) {
                return redirect()->route('kajur.dashboard');
            } elseif ($user->hasRole('dosen_pengampu')) {
                return redirect()->route('dosen.dashboard');
            } elseif ($user->hasRole('user')) {
                return redirect()->route('user.dashboard');
            } elseif ($user->hasRole('super_admin')) {
                return redirect()->route('users');
            } else {
                // Jika role tidak sesuai dengan yang diharapkan, arahkan ke halaman tertentu
                return redirect()->route('login')->with('failed', 'Anda tidak memiliki akses yang sesuai');
            }
        } else {
            // Otentikasi gagal, arahkan pengguna kembali ke halaman login dengan pesan kesalahan
            return redirect()->back()->withInput()->with('failed', 'Email atau Password Salah');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('login')->with('success', 'Kamu Telah Logout');
    }
}
