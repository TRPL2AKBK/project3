<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VerifikasiRPS extends Model
{
    protected $table = 'verifikasi_rps';
    protected $primaryKey = 'id_verif_rps';
    protected $fillable = [
        'id_verif_rps',
        'id_rps',
        'evaluasi',
        'tanggal'
    ];

    public $timestamps = false;
    public static function updateVerifikasiRPS($id_verif_rps, $verifData)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_verif_rps', $id_verif_rps)->update($verifData);
    }

    public function rps()
    {
        return $this->belongsTo('App\Models\RPS', 'id_rps', 'id_rps');
    }

    public function verif1()
    {
        return $this->belongsTo('App\Models\User', 'verifikator1', 'id')->with('dosen')->withDefault();
    }

    public function verif2()
    {
        return $this->belongsTo('App\Models\User', 'verifikator2', 'id')->with('dosen')->withDefault();
    }
}
