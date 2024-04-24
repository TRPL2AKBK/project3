<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DosenKBK extends Model
{
    protected $table = 'ref_dosen_kbk';
    protected $primaryKey = 'id_dosenkbk';
    protected $fillable = [
        'id_dosenkbk',
        'id_dosen',
        'id_kbk',
    ];

    public $timestamps = false;

    public static function updatedosenKBK($id_dosenkbk, $dosenkbk)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_dosenkbk', $id_dosenkbk)->update($dosenkbk);
    }

    public function dosen()
    {
        return $this->belongsTo('App\Models\Dosen', 'id_dosen');
    }

    public function kbk()
    {
        return $this->belongsTo('App\Models\KBK', 'id_kbk');
    }
}
