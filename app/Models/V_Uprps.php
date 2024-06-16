<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class V_Uprps extends Model
{
    protected $table = 'v_uprps';
    protected $fillable = [
        'id',
        'id_dosen_pengembang',
        'id_rps',

    ];
}
