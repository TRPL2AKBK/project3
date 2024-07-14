<?php

namespace App\Helpers;

class NumberHelper
{
    public static function angkaKeRomawi($angka)
    {
        $nilai = [
            'M' => 1000,
            'CM' => 900,
            'D' => 500,
            'CD' => 400,
            'C' => 100,
            'XC' => 90,
            'L' => 50,
            'XL' => 40,
            'X' => 10,
            'IX' => 9,
            'V' => 5,
            'IV' => 4,
            'I' => 1,
        ];
        $romawi = '';
        while ($angka > 0) {
            foreach ($nilai as $rom => $nilai_rom) {
                if ($angka >= $nilai_rom) {
                    $angka -= $nilai_rom;
                    $romawi .= $rom;
                    break;
                }
            }
        }
        return $romawi;
    }

    public static function angkaKeTeks($angka)
    {
        switch ($angka) {
            case 1:
                return 'satu';
            case 2:
                return 'dua';
            case 3:
                return 'tiga';
            case 4:
                return 'empat';
            case 5:
                return 'lima';
            case 6:
                return 'enam';
            case 7:
                return 'tujuh';
            case 8:
                return 'delapan';
            default:
                return 'lainnya';
        }
    }
}
