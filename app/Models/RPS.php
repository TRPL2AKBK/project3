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
        'id_matakuliah',
        'versi_rps',
        'dokumen',
        'evaluasi',
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

    public function dosenpengampu()
    {
        return $this->belongsTo('App\Models\DosenPengampu', 'id_matakuliah', 'id_matakuliah')->with('matakuliah')->withDefault();
    }

    public function pengembang()
    {
        return $this->belongsTo('App\Models\User', 'id_dosen_pengembang', 'id')->with('dosen')->withDefault();
    }

    public function matakuliah()
    {
        return $this->belongsTo(MataKuliah::class, 'id_matakuliah', 'id_matakuliah');
        // Sesuaikan 'foreign_key' dan 'other_key' dengan kolom yang sesuai di tabel Anda
    }
}
