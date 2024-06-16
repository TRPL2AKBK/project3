<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Role
{
    public function handle(Request $request, Closure $next, $role)
    {
        if (!$request->user()->hasRole($role)) {
            // Redirect atau abort jika pengguna tidak memiliki peran yang diperlukan
            abort(403, 'Role tidak sesuai');
        }

        return $next($request);
    }
}
