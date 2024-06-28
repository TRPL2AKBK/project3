<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionController extends Controller
{
    public function __construct()
    {
        $this->middleware('role:super_admin');
    }

    public function index()
    {
        $roles = Role::all();
        $permissions = Permission::all();
        // $data = User::orderByDesc('id')->get();
        $users = User::orderByDesc('id')->get();

        return view('super_admin.roles_permissions.index', compact('roles', 'permissions', 'users'));
    }
    public function assignRole(Request $request)
    {
        $user = User::find($request->user_id);
        $user->assignRole($request->roles);
        return redirect()->back()->with('success', 'Roles assigned successfully.');
    }

    public function removeRole(Request $request, User $user)
    {
        $user->removeRole($request->role);
        return redirect()->back()->with('success', 'Role removed successfully.');
    }

    public function givePermission(Request $request)
    {
        $user = User::find($request->user_id);
        $user->givePermissionTo($request->permissions);
        return redirect()->back()->with('success', 'Permissions given successfully.');
    }

    public function revokePermission(Request $request, User $user)
    {
        $user->revokePermissionTo($request->permission);
        return redirect()->back()->with('success', 'Permission revoked successfully.');
    }

    public function editRoles(Request $request)
    {
        $user = User::findOrFail($request->user_id);
        $user->syncRoles($request->roles);

        return redirect()->back()->with('success', 'Roles updated successfully.');
    }

    public function updateUserRolesPermissions(Request $request, $id)
    {
        // dd($request);
        $user = User::findOrFail($id);

        // Sync roles
        if ($request->has('roles')) {
            $user->syncRoles($request->roles);
        } else {
            $user->syncRoles([]); // Remove all roles if none selected
        }

        // Sync permissions
        if ($request->has('permissions')) {
            $user->syncPermissions($request->permissions);
        } else {
            $user->syncPermissions([]); // Remove all permissions if none selected
        }

        return redirect()->back()->with('success', 'User roles and permissions updated successfully.');
    }

    public function deleteUserRolesPermissions($id)
    {
        $user = User::findOrFail($id);
        $user->roles()->detach();
        $user->permissions()->detach();

        return redirect()->back()->with('success', 'User roles and permissions deleted successfully.');
    }

    public function destroy(string $id)
    {
        $data = User::find($id); //mencari data berdasarkan id
        if ($data) {
            $data->delete();
        }
        return redirect()->route('admin.index');
    }
}
