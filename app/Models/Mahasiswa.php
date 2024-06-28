<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    protected $table = 'ref_mahasiswa';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nim',
        'nama',
        'kode_jurusan',
        'jurusan',
        'kode_prodi',
        'prodi',
        'gender',
    ];

    public $timestamps = false;
}
