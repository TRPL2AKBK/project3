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

    public static function updatePimpinanJurusan($id_pimpinan_jurusan, $PimpinanJurusan)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_pimpinan_jurusan', $id_pimpinan_jurusan)->update($PimpinanJurusan);
    }

    public function prodi()
    {
        return $this->belongsTo('App\Models\Prodi', 'id_prodi');
    }
}
