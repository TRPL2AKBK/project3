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
        Permission::updateOrcreate(['name' => 'view dashboard admin']);
        Permission::updateOrcreate(['name' => 'view dashboard super_admin']);
        Permission::updateOrcreate(['name' => 'view data user']);
        Permission::updateOrcreate(['name' => 'view data change log']);
        Permission::updateOrcreate(['name' => 'view data hak akses']);
        Permission::updateOrcreate(['name' => 'view data master']);
        Permission::updateOrcreate(['name' => 'view data tahun akademik']);
        Permission::updateOrcreate(['name' => 'view data kurikulum']);
        Permission::updateOrcreate(['name' => 'view data matakuliah']);
        Permission::updateOrcreate(['name' => 'view data dosen pengampu']);
        Permission::updateOrcreate(['name' => 'view data manajemen kbk']);
        Permission::updateOrcreate(['name' => 'view data mahasiswa']);
        Permission::updateOrcreate(['name' => 'view data proposal ta']);
        Permission::updateOrcreate(['name' => 'view data rps']);
        Permission::updateOrcreate(['name' => 'view data verifikasi rps']);
        Permission::updateOrcreate(['name' => 'view data soal']);
        Permission::updateOrcreate(['name' => 'view data verifikasi soal']);
        Permission::updateOrcreate(['name' => 'view data role']);
        Permission::updateOrcreate(['name' => 'view dashboard user']);
        Permission::updateOrcreate(['name' => 'view dashboard dosen']);
        Permission::updateOrcreate(['name' => 'view dashboard kaprodi']);
        Permission::updateOrcreate(['name' => 'view dashboard kajur']);
        Permission::updateOrcreate(['name' => 'view dashboard pengurus']);
        Permission::updateOrcreate(['name' => 'crud rps']);
        Permission::updateOrcreate(['name' => 'crud soal']);
        Permission::updateOrcreate(['name' => 'crud verif rps']);
        Permission::updateOrcreate(['name' => 'crud verif soal']);
        // Permission::updateOrcreate(['name' => 'view']);
        // Permission::updateOrcreate(['name' => 'view']);

        $role1 = Role::updateOrcreate(['name' => 'super_admin']);
        $role1->givePermissionTo(
            'view data user',
            'view data change log',
            'view dashboard super_admin',
            'view data hak akses',
            'view data role'
        );
        $role2 = Role::updateOrcreate(['name' => 'admin']);
        $role2->givePermissionTo(
            'view dashboard admin',
            'view data master',
            'view data tahun akademik',
            'view data kurikulum',
            'view data matakuliah',
            'view data dosen pengampu',
            'view data manajemen kbk',
            'view data mahasiswa',
            'view data proposal ta',

        );
        $role3 = Role::updateOrcreate(['name' => 'dosen_pengampu']);
        $role3->givePermissionTo(
            'view data dosen pengampu',
            'view data rps',
            'view data soal',
            'view dashboard dosen',
            'crud rps',
            'crud soal'
        );
        $role4 = Role::updateOrcreate(['name' => 'pengurus_kbk']);
        $role4->givePermissionTo(
            'view data rps',
            'view data verifikasi rps',
            'view data soal',
            'view data verifikasi soal',
            'view dashboard pengurus',
            'crud verif rps',
            'crud verif soal',
        );

        $role5 = Role::updateOrcreate(['name' => 'dosen_kbk']);
        $role6 = Role::updateOrcreate(['name' => 'pimpinan_prodi']);
        $role6->givePermissionTo(
            'view data rps',
            'view data verifikasi rps',
            'view data soal',
            'view data verifikasi soal',
            'view dashboard kaprodi',
        );
        $role7 = Role::updateOrcreate(['name' => 'pimpinan_jurusan']);
        $role7->givePermissionTo(
            'view data rps',
            'view data verifikasi rps',
            'view data soal',
            'view data verifikasi soal',
            'view dashboard kajur',

        );
        $role8 = Role::updateOrcreate(['name' => 'pengguna_umum']);
        $role8->givePermissionTo(
            'view dashboard user',
        );

        $user = User::find(1);
        $user->assignRole('admin');

        $superadmin = User::find(99);
        $superadmin->assignRole('super_admin');

        // $user->givePermissionTo('edit articles');
    }
}
