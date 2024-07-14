<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Role
{
    public function handle($request, Closure $next, ...$roles)
    {
        if (!Auth::check()) {
            return redirect('login');
        }

        $user = Auth::user();
        if (!$user->hasAnyRole($roles)) {
            return redirect()->back()->with('error', 'Akses tidak sah ');
        }

        return $next($request);
    }
}
