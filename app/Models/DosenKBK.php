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
        'nidn',
        'id_kbk',
        'id_jabatan_kbk',
    ];

    public $timestamps = false;

    public static function updatedosenKBK($nidn, $dosenkbk)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_dosenkbk', $nidn)->update($dosenkbk);
    }

    public function dosen()
    {
        return $this->belongsTo('App\Models\Dosen', 'nidn', 'nidn');
    }

    public function kbk()
    {
        return $this->belongsTo('App\Models\KBK', 'id_kbk');
    }

    public function jabatankbk()
    {
        return $this->belongsTo('App\Models\JabatanKBK', 'id_jabatan_kbk');
    }
}
