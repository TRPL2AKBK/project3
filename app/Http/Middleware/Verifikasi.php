<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Verifikasi
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // if (auth()->user()->id_level == 1 || auth()->user()->id_level == 2 || auth()->user()->id_level == 3 || auth()->user()->id_level == 4) {
        if (auth()->user()->hasAnyRole(['dosen_pengampu', 'pengurus_kbk', 'pimpinan_prodi', 'pimpinan_jurusan'])) {

            return $next($request);
        }
        return redirect()->back()->with('error', 'Akses tidak sah ');
    }
}
