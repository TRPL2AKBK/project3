<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PimpinanProdi extends Model
{
    protected $table = 'ref_pimpinan_prodi';
    protected $primaryKey = 'id_pimpinan_prodi';
    protected $fillable = [
        'id_pimpinan_prodi',
        'nama',
        'nidn',
        'nip',
        'kode_prodi',
        'prodi',
        'kode_jurusan',
        'jurusan',
        'periode',
        'status',
        'id_jabatan',
    ];

    public $timestamps = false;

    public function jabatan()
    {
        return $this->belongsTo('App\Models\JabatanPimpinan', 'id_jabatan', 'id_jabatan_pimpinan');
    }
}
