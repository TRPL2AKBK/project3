<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jurusan extends Model
{
    protected $table = 'jurusan';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'kode_jurusan',
        'jurusan',
    ];

    public $timestamps = false;
    public static function updateJurusan($id, $jurusan)
    {
        // Lakukan pembaruan data pada model Prodi
        return self::whereId($id)->update($jurusan);
    }
}
