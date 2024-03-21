<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tahun extends Model
{
    use HasFactory;

    protected $table = 'tahun_ajaran';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'thn_ajaran',
        'status',
    ];
}
