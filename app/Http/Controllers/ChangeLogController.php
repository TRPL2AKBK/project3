<?php

// app/Http/Controllers/ChangeLogController.php

namespace App\Http\Controllers;

use App\Models\ChangeLog;

class ChangeLogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $changeLogs = ChangeLog::with('user')->orderByDesc('created_at')->get();
        // dd($changeLogs);
        return view('change-log.index', compact('changeLogs'));
    }
}
