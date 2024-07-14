<?php

namespace App\Imports;

use App\Models\DosenKBK;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;

class DosenKBKImport implements ToCollection, WithHeadingRow
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $rows)
    {
        $errors = [];

        foreach ($rows as $row) {
            $validator = Validator::make($row->toArray(), [
                'nidn' => 'required|unique:dosen_kbk,nidn',
            ]);

            if ($validator->fails()) {
                $errors[] = "NIDN {$row['nidn']} tidak valid atau sudah digunakan.";
                continue; // Skip further processing for this row
            }

            DosenKBK::create([
                'nidn' => $row['nidn'],
                'id_kbk' => $row['kbk'],
                'id_jabatan_kbk' => $row['jabatan'],
            ]);
        }

        if (!empty($errors)) {
            Log::error($errors);
            return Redirect::back()->withErrors($errors)->withInput();
        }
    }
}
