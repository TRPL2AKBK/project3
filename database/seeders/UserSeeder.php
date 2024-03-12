<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Foundation\Auth\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name'  => 'Muhammad Amir Shafwan',
            'email' => 'mir@gmail.com',
            'password'  => Hash::make('admin'),
            'level' => 'mahasiswa',
        ]);
    }
}
