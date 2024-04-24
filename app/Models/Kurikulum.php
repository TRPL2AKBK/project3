<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kurikulum extends Model
{
    protected $table = 'ref_kurikulum';
    protected $primaryKey = 'id_kurikulum';
    protected $fillable = [
        'id_kurikulum',
        'kode_kurikulum',
        'nama_kurikulum',
        'tahun',
        'id_prodi',
        'status',
    ];

    public $timestamps = false;

    public function prodi()
    {
        return $this->belongsTo('App\Models\Prodi', 'id_prodi');
    }
}
