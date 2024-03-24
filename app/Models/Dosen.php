<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    protected $table = 'ref_dosen';
    protected $primaryKey = 'id_dosen';
    protected $fillable = [
        'id_dosen',
        'nama',
        'nidn',
        'nip',
        'gender',
        'id_prodi',
        'id_jurusan',
        'email',
        'image',
        'status',
    ];

    public function prodi()
    {
        return $this->belongsTo('App\Models\Prodi', 'id_prodi');
    }

    public function jurusan()
    {
        return $this->belongsTo('App\Models\Jurusan', 'id_jurusan');
    }
}
