<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Soal extends Model
{
    protected $table = 'ref_soal';
    protected $primaryKey = 'id_soal';
    protected $fillable = [
        'id_soal',
        'id_matakuliah_kbk',
        'dosen_pengampu',
        'dokumen',
        'id_tahun_akademik',
    ];

    public $timestamps = false;

    public static function updateSoal($id_soal, $soalData)
    {
        return self::where('id_soal', $id_soal)->update($soalData);
    }

    public function verifsoal()
    {
        return $this->hasOne('App\Models\VerifikasiSoal', 'id_soal', 'id_soal');
    }

    public function tahun()
    {
        return $this->belongsTo('App\Models\Tahun', 'id_tahun_akademik');
    }

    public function verifsoal1()
    {
        return $this->belongsTo('App\Models\VerifikasiSoal', 'id_soal', 'id_soal')->with('verif1')->withDefault();
    }

    public function verifsoal2()
    {
        return $this->belongsTo('App\Models\VerifikasiSoal', 'id_soal', 'id_soal')->with('verif2')->withDefault();
    }

    public function pengampu()
    {
        return $this->hasOneThrough(
            Dosen::class,
            DosenKBK::class,
            'id_dosenkbk',
            'nidn',
            'dosen_pengampu',
            'nidn'
        );
    }

    public function matakuliah()
    {
        return $this->hasOneThrough(
            Matakuliah::class, // Model tujuan akhir
            MatakuliahKBK::class, // Model perantara
            'id_matakuliahkbk', // Foreign key di tabel perantara (DosenKBK) yang menghubungkan ke primary key di tabel tujuan akhir (Dosen)
            'id_matakuliah', // Foreign key di tabel tujuan akhir (Dosen) yang menghubungkan ke primary key di tabel perantara (DosenKBK)
            'id_matakuliah_kbk', // Local key di tabel ini (RPS) yang menghubungkan ke foreign key di tabel perantara (DosenKBK)
            'id_matakuliah' // Local key di tabel perantara (DosenKBK) yang menghubungkan ke primary key di tabel tujuan akhir (Dosen)
        );
    }
}
