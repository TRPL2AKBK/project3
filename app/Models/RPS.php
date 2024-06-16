<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RPS extends Model
{
    protected $table = 'ref_rps';
    protected $primaryKey = 'id_rps';
    protected $fillable = [
        'id_rps',
        'id_matakuliah_kbk',
        'versi_rps',
        'dokumen',
        'id_dosen_pengembang',
    ];

    public $timestamps = false;
    public static function updateRPS($id_rps, $rpsData)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_rps', $id_rps)->update($rpsData);
    }

    public function verifrps()
    {
        return $this->hasOne('App\Models\VerifikasiRPS', 'id_rps', 'id_rps');
    }

    public function verifrps1()
    {
        return $this->belongsTo('App\Models\VerifikasiRPS', 'id_rps', 'id_rps')->with('verif1')->withDefault();
    }

    public function verifrps2()
    {
        return $this->belongsTo('App\Models\VerifikasiRPS', 'id_rps', 'id_rps')->with('verif2')->withDefault();
    }

    public function pengembang()
    {
        return $this->hasOneThrough(
            Dosen::class,
            DosenKBK::class,
            'id_dosenkbk',
            'nidn',
            'id_dosen_pengembang',
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
