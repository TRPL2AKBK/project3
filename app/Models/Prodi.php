<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prodi extends Model
{
    protected $table = 'ref_prodi';
    protected $primaryKey = 'id_prodi';
    protected $fillable = [
        'id_prodi',
        'kode_prodi',
        'prodi',
        'id_jurusan',
        'id_jenjang',

    ];

    public $timestamps = false;

    public static function updateProdi($id_prodi, $prodi)
    {
        // Lakukan pembaruan data pada model Prodi
        return self::where('id_prodi', $id_prodi)->update($prodi);
    }

    public function jurusan()
    {
        return $this->belongsTo('App\Models\Jurusan', 'id_jurusan');
    }
}
