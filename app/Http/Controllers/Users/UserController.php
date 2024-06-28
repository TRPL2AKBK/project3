<?php

namespace App\Http\Controllers\Users;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = User::get();

        return view('user/dashboard', compact('data'));
    }

    // public function updateUserRolesPermissions(Request $request, $id)
    // {
    //     // dd($request);
    //     $user = User::findOrFail($id);

    //     // Sync roles
    //     if ($request->has('roles')) {
    //         $user->syncRoles($request->roles);
    //     } else {
    //         $user->syncRoles([]); // Remove all roles if none selected
    //     }

    //     // Sync permissions
    //     if ($request->has('permissions')) {
    //         $user->syncPermissions($request->permissions);
    //     } else {
    //         $user->syncPermissions([]); // Remove all permissions if none selected
    //     }

    //     return redirect()->back()->with('success', 'User roles and permissions updated successfully.');
    // }

    // public function deleteUserRolesPermissions($id)
    // {
    //     $user = User::findOrFail($id);
    //     $user->roles()->detach();
    //     $user->permissions()->detach();

    //     return redirect()->back()->with('success', 'User roles and permissions deleted successfully.');
    // }

    // public function destroy(string $id)
    // {
    //     $data = User::find($id); //mencari data berdasarkan id
    //     if ($data) {
    //         $data->delete();
    //     }
    //     return redirect()->route('admin.index');
    // }
}
