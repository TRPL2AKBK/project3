<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PimpinanJurusan extends Model
{
    protected $table = 'ref_pimpinan_jurusan';
    protected $primaryKey = 'id_pimpinan_jurusan';
    protected $fillable = [
        'id_pimpinan_jurusan',
        'jabatan_pimpinan',
        'nama',
        'id_jurusan',
        'periode',
        'status',
    ];

    public $timestamps = false;

    // public static function updatePimpinanJurusan($id_pimpinan_jurusan, $PimpinanJurusan)
    // {
    //     // Lakukan pembaruan data pada model Jurusan
    //     return self::where('id_pimpinan_jurusan', $id_pimpinan_jurusan)->update($PimpinanJurusan);
    // }

    public function jurusan()
    {
        return $this->belongsTo('App\Models\Jurusan', 'id_jurusan');
    }

    public function jabatan()
    {
        return $this->belongsTo('App\Models\JabatanPimpinan', 'jabatan_pimpinan', 'jabatan_pimpinan');
    }
}
