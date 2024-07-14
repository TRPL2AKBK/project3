<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Matakuliah extends Model
{
    protected $table = 'matakuliah';
    protected $primaryKey = 'id_matakuliah';
    protected $fillable = [
        'id_matakuliah',
        'kode_matakuliah',
        'nama_matakuliah',
        'TP',
        'sks',
        'jam',
        'sks_teori',
        'sks_praktek',
        'jam_teori',
        'jam_praktek',
        'semester',
        'id_kurikulum',
    ];

    public $timestamps = false;


    public function kurikulum()
    {
        return $this->belongsTo(Kurikulum::class, 'id_kurikulum');
    }
}
