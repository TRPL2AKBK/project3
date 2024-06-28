<?php

namespace App\Imports;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Facades\Validator;


class UserImport implements ToCollection, WithHeadingRow
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $rows)
    {
        $errors = [];

        foreach ($rows as $row) {

            $validator = Validator::make($row->toArray(), [
                'email' => 'required|email|unique:user,email',
            ]);

            if ($validator->fails()) {
                $errors[] = "Email {$row['email']} tidak valid atau sudah digunakan.";

                continue;
            }

            User::create([
                'name'      => $row['nama'],
                'email'     => $row['email'],
                'nidn'  => $row['nidn'],
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
                'password' => Hash::make('12345678'),
            ]);
        }
    }
}
