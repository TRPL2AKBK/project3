<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    protected $table = 'ref_mahasiswa';
    protected $primaryKey = 'id';
    protected $fillable = [
        'user_id ',
        'nobp',
        'nama',
        'telp',
        'alamat',
        'prodi_id ',
    ];

    public function prodi()
    {
        return $this->belongsTo('App\Models\Prodi', 'prodi_id', 'id_prodi');
    }
}
