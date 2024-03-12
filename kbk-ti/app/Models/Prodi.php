<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prodi extends Model
{
    protected $table = 'prodi';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'kode_prodi',
        'prodi',
        'id_jurusan',
        'jenjang',

    ];

    public $timestamps = false;

    // Metode kustom untuk memperbarui data prodi
    public static function updateProdi($id, $prodi)
    {
        // Lakukan pembaruan data pada model Prodi
        return self::whereId($id)->update($prodi);
    }

    // =============================

    public function jurusan()
    {
        return $this->belongsTo('App\Models\Jurusan', 'id_jurusan');
    }

    //     public function prodi(){

    //     }
}
