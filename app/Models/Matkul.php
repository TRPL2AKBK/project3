<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Matkul extends Model
{
    protected $table = 'matkul';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'matkul',
        'id_bidang',
        'id_dosen',
    ];

    public function bidang()
    {
        // minta data dari tabel bidang_keahlian foreign key id_bidang
        return $this->belongsTo('App\Models\Bidang', 'id_bidang');
    }

    public function dosen()
    {
        return $this->belongsTo('App\Models\Dosen', 'id_dosen');
    }
}
