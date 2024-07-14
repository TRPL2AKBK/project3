<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    protected $table = 'dosen';
    protected $primaryKey = 'id_dosen';
    protected $fillable = [
        'id_dosen',
        'nama',
        'nidn',
        'nip',
        'gender',
        'kode_jurusan',
        'jurusan',
        'kode_prodi',
        'prodi',
        'email',
    ];

    public $timestamps = false;


    public function dosenPengampus()
    {
        return $this->hasMany(DosenPengampu::class, 'nidn', 'nidn'); // Menggunakan nidn sebagai foreign key
    }
}
