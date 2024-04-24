<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MatakuliahKBK extends Model
{
    protected $table = 'ref_matakuliah_kbk';
    protected $primaryKey = 'id_matakuliahkbk';
    protected $fillable = [
        'id_matakuliahkbk',
        'id_matakuliah',
        'id_kbk',
    ];

    public $timestamps = false;

    public static function updateMatakuliahKBK($id_matakuliahkbk, $matakuliahkbk)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_matakuliahkbk', $id_matakuliahkbk)->update($matakuliahkbk);
    }

    public function matakuliah()
    {
        return $this->belongsTo('App\Models\Matakuliah', 'id_matakuliah');
    }

    public function kbk()
    {
        return $this->belongsTo('App\Models\KBK', 'id_kbk');
    }
}
