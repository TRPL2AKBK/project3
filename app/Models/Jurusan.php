<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jurusan extends Model
{
    protected $table = 'ref_jurusan';
    protected $primaryKey = 'id_jurusan';
    protected $fillable = [
        'id_jurusan',
        'kode_jurusan',
        'jurusan',
    ];

    public $timestamps = false;
    public static function updateJurusan($id_jurusan, $jurusan)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_jurusan', $id_jurusan)->update($jurusan);
    }
}
