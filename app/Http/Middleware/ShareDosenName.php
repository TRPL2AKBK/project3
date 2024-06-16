<?php

namespace App\Http\Middleware;

use App\Models\Dosen;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class ShareDosenName
{
    public function handle($request, Closure $next)
    {
        if (Auth::check()) {
            $nidn = Auth::user()->nidn;
            $dosen = Dosen::where('nidn', $nidn)->first();

            $nama = $dosen ? $dosen->nama : 'Dosen tidak ditemukan';
            view()->share('nama_dosen', $nama);
        }

        return $next($request);
    }
}
