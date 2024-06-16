<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KBK extends Model
{
    protected $table = 'ref_kbk';
    protected $primaryKey = 'id_kbk';
    protected $fillable = [
        'id_kbk',
        'kode_kbk',
        'nama_kbk',
        'ketua_kbk'
    ];

    public $timestamps = false;
    public static function updateKBK($id_kbk, $kbk)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_kbk', $id_kbk)->update($kbk);
    }

    // public function ketua()
    // {
    //     return $this->belongsTo('App\Models\DosenKBK', 'ketua_kbk', 'id_dosenkbk');
    // }
    public function ketua()
    {
        return $this->belongsTo('App\Models\DosenKBK', 'ketua_kbk', 'id_dosenkbk')->with('dosen');
    }
}
