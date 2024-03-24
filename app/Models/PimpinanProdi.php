<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PimpinanProdi extends Model
{
    protected $table = 'ref_pimpinan_prodi';
    protected $primaryKey = 'id_pimpinan_prodi';
    protected $fillable = [
        'id_pimpinan_prodi',
        'id_jabatan_pimpinan',
        'id_prodi',
        'id_dosen',
        'periode',
        'status',
    ];

    public $timestamps = false;

    public static function updatePimpinanProdi($id_pimpinan_prodi, $PimpinanProdi)
    {
        return self::where('id_pimpinan_prodi', $id_pimpinan_prodi)->update($PimpinanProdi);
    }

    public function prodi()
    {
        return $this->belongsTo('App\Models\Prodi', 'id_prodi');
    }

    public function dosen()
    {
        return $this->belongsTo('App\Models\Dosen', 'id_dosen');
    }

    public function jabatan()
    {
        return $this->belongsTo('App\Models\JabatanPimpinan', 'id_jabatan_pimpinan');
    }
}
