<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jurusan extends Model
{
    protected $table = 'jurusan';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'kode_jurusan',
        'jurusan',

    ];
}
