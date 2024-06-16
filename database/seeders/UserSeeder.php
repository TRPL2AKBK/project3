<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('user')->insert([
            [
                'nidn' => '0019038103',
                'name' => 'admin',
                'email' => 'admin@gmail.com',
                'password' => Hash::make('admin'),
                'id_level' => 1,
                'image' => NULL,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nidn' => '0025088802',
                'name' => 'ketua kbk',
                'email' => 'kbk@gmail.com',
                'password' => Hash::make('kbk'),
                'id_level' => 2,
                'image' => NULL,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nidn' => '0009058601',
                'name' => 'kaprodi',
                'email' => 'kaprodi@gmail.com',
                'password' => Hash::make('kaprodi'),
                'id_level' => 3,
                'image' => NULL,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nidn' => '0218068801',
                'name' => 'dosen',
                'email' => 'dosen@gmail.com',
                'password' => Hash::make('dosen'),
                'id_level' => 4,
                'image' => NULL,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nidn' => '0008069103',
                'name' => 'user',
                'email' => 'user@gmail.com',
                'password' => Hash::make('user'),
                'id_level' => 5,
                'image' => NULL,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],

        ]);
    }
}
