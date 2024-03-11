<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prodi extends Model
{
    protected $table = 'prodi';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'kode_prodi',
        'prodi',
        'id_jurusan',
        'jenjang',

    ];

    public function jurusan()
    {
        return $this->belongsTo('App\Models\Jurusan', 'id_jurusan');
    }

    //     public function prodi(){

    //     }
}
