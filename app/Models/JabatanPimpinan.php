<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JabatanPimpinan extends Model
{
    protected $table = 'jabatan_pimpinan';
    protected $primaryKey = 'id_jabatan_pimpinan';
    protected $fillable = [
        'id_jabatan_pimpinan',
        'id_jabatan_pimpinan',
        'kode_jabatan_pimpinan',
        'status',
    ];
}
