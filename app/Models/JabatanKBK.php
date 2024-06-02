<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JabatanKBK extends Model
{
    protected $table = 'ref_jabatan_kbk';
    protected $primaryKey = 'id_jabatan_kbk';
    protected $fillable = [
        'id_jabatan_kbk',
        'nama_jabatan_kbk',
    ];
}
