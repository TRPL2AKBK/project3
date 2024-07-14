<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Soal extends Model
{
    protected $table = 'soal';
    protected $primaryKey = 'id_soal';
    protected $fillable = [
        'id_soal',
        'id_matakuliah',
        'dosen_pengampu',
        'dokumen',
        'evaluasi',
        'id_tahun_akademik',
        'id_prodi',
    ];

    public $timestamps = false;

    public static function updateSoal($id_soal, $soalData)
    {
        return self::where('id_soal', $id_soal)->update($soalData);
    }

    public function user()
    {
        return $this->belongsTo('App\Models\User', 'dosen_pengampu');
    }

    public function verifsoal()
    {
        return $this->hasOne('App\Models\VerifikasiSoal', 'id_soal', 'id_soal');
    }

    public function tahun()
    {
        return $this->belongsTo('App\Models\Tahun', 'id_tahun_akademik');
    }

    public function dosenpengampu()
    {
        return $this->belongsTo('App\Models\DosenPengampu', 'id_matakuliah', 'id_matakuliah')->with('matakuliah')->withDefault();
    }

    public function pengembang()
    {
        return $this->belongsTo('App\Models\User', 'dosen_pengampu', 'id')->with('dosen')->withDefault();
    }

    public function matakuliah()
    {
        return $this->belongsTo(MataKuliah::class, 'id_matakuliah', 'id_matakuliah')->with('kurikulum')->withDefault();
    }
}
