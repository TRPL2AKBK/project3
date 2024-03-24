<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DosenPengampu extends Model
{
    protected $table = 'ref_dosen_matakuliah';
    protected $primaryKey = 'id_dosen_matakuliah';
    protected $fillable = [
        'id_dosen_matakuliah',
        'id_dosen',
        'id_matakuliah',
        'id_kelas',
        'id_smt_thn_akd',
    ];

    public $timestamps = false;

    public function dosen()
    {
        return $this->belongsTo('App\Models\Dosen', 'id_dosen');
    }

    public function matakuliah()
    {
        return $this->belongsTo('App\Models\Matakuliah', 'id_matakuliah');
    }

    public function tahun()
    {
        return $this->belongsTo('App\Models\Tahun', 'id_smt_thn_akd');
    }
}
