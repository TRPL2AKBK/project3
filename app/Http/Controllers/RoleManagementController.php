<?php

// app/Http/Controllers/RoleManagementController.php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleManagementController extends Controller
{
    public function __construct()
    {
        $this->middleware('role:super_admin');
    }

    public function index()
    {
        $roles = Role::all();
        $permissions = Permission::all();

        return view('super_admin.role_management.index', compact('roles', 'permissions'));
    }

    public function update(Request $request, Role $role)
    {
        $role->syncPermissions($request->permissions);
        return redirect()->route('role_management.index')->with('success', 'Permissions updated successfully');
    }

    public function store(Request $request)
    {
        $request->validate([
            'role_name' => 'required|string|max:255|unique:roles,name',
            'permissions' => 'required|array',
            'permissions.*' => 'exists:permissions,id',
        ]);

        $role = Role::create([
            'name' => $request->role_name,
        ]);

        $role->permissions()->sync($request->permissions);

        return redirect()->route('role_management.index')->with('success', 'Role berhasil ditambahkan.');
    }

    public function destroy($id)
    {
        $role = Role::find($id);

        // Pastikan pengguna ditemukan
        if (!$role) {
            return redirect()->route('role_management.index')->with('error', 'Role tidak ditemukan');
        }
        if ($role->name == 'super_admin') {
            return redirect()->route('role_management.index')->with('error', 'Role super admin tidak bisa dihapus');
        }

        // Lanjutkan dengan penghapusan
        $role->delete();

        return redirect()->route('role_management.index')->with('success', 'Role berhasil dihapus');
    }
}
