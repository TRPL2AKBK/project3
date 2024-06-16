<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Permission::updateOrcreate(['name' => 'view dashboard admin']);
        // Permission::updateOrcreate(['name' => 'view data user']);
        // Permission::updateOrcreate(['name' => 'view data jurusan']);
        // Permission::updateOrcreate(['name' => 'view data prodi']);
        // Permission::updateOrcreate(['name' => 'view data dosen']);
        // Permission::updateOrcreate(['name' => 'view data pimpinan jurusan']);
        // Permission::updateOrcreate(['name' => 'view data pimpinan prodi']);
        // Permission::updateOrcreate(['name' => 'view tahun akademik']);
        // Permission::updateOrcreate(['name' => 'view data kurikulum']);
        // Permission::updateOrcreate(['name' => 'view data matakuliah']);
        // Permission::updateOrcreate(['name' => 'view data dosen pengampu']);
        // Permission::updateOrcreate(['name' => 'view data kbk']);
        // Permission::updateOrcreate(['name' => 'view data dosen kbk']);
        // Permission::updateOrcreate(['name' => 'ssssss']);
        // Permission::updateOrcreate(['name' => 'ssssss']);
        // Permission::updateOrcreate(['name' => 'ssssss']);
        // Permission::updateOrcreate(['name' => 'ssssss']);
        // Permission::updateOrcreate(['name' => 'ssssss']);

        // $role = Role::updateOrcreate(['name' => 'admin']);
        // $role->givePermissionTo(['hapus dosen', 'edit dosen', 'tambah dosen']);

        // $role = Role::updateOrcreate(['name' => 'dosen']);
        // $role->givePermissionTo('edit dosen');

        $role = Role::updateOrcreate(['name' => 'super admin']);
        $role = Role::updateOrcreate(['name' => 'user']);
        $role = Role::updateOrcreate(['name' => 'admin']);
        $role = Role::updateOrcreate(['name' => 'dosen pengampu']);
        $role = Role::updateOrcreate(['name' => 'pengurus kbk']);
        $role = Role::updateOrcreate(['name' => 'dosen kbk']);
        $role = Role::updateOrcreate(['name' => 'pimpinan prodi']);
        $role = Role::updateOrcreate(['name' => 'pimpinan jurusan']);
        $role = Role::updateOrcreate(['name' => 'pengguna umum']);

        $user = User::find(1);
        $user->assignRole('admin', 'super admin', 'user', 'dosen pengampu', 'pengurus kbk', 'dosen kbk', 'pimpinan prodi', 'pimpinan jurusan', 'pengguna umum');

        // $user->givePermissionTo('edit articles');
    }
}
