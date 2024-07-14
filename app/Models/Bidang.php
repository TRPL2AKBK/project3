<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bidang extends Model
{
    protected $table = 'bidang_keahlian';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'bidang_keahlian',
    ];
}
