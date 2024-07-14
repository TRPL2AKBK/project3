<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VerifikasiSoal extends Model
{
    protected $table = 'verifikasi_soal';
    protected $primaryKey = 'id_verif_soal';
    protected $fillable = [
        'id_verif_soal',
        'id_soal',
        'evaluasi',
        'tanggal'
    ];

    public $timestamps = false;

    public static function updateVerifikasiSoal($id_verif_soal, $verifData)
    {
        return self::where('id_verif_soal', $id_verif_soal)->update($verifData);
    }

    public function soal()
    {
        return $this->belongsTo('App\Models\Soal', 'id_soal', 'id_soal');
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
