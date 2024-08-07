<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RPS extends Model
{
    protected $table = 'rps';
    protected $primaryKey = 'id_rps';
    protected $fillable = [
        'id_rps',
        'id_matakuliah',
        'id_tahun_akademik',
        'dokumen',
        'evaluasi',
        'id_dosen_pengembang',
        'id_prodi',
    ];

    public $timestamps = false;
    public static function updateRPS($id_rps, $rpsData)
    {
        // Lakukan pembaruan data pada model Jurusan
        return self::where('id_rps', $id_rps)->update($rpsData);
    }

    public function tahun()
    {
        return $this->belongsTo('App\Models\Tahun', 'id_tahun_akademik');
    }
    public function user()
    {
        return $this->belongsTo('App\Models\User', 'id_dosen_pengembang');
    }

    public function mkbk()
    {
        return $this->belongsTo('App\Models\MatakuliahKBK', 'id_matakuliah')->with('kbk')->withDefault();
    }

    public function verifrps()
    {
        return $this->hasOne('App\Models\VerifikasiRPS', 'id_rps', 'id_rps');
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
        return $this->belongsTo(MataKuliah::class, 'id_matakuliah', 'id_matakuliah')->with('kurikulum')->withDefault();
        // Sesuaikan 'foreign_key' dan 'other_key' dengan kolom yang sesuai di tabel Anda
    }

    public function matakuliahkbk()
    {
        return $this->belongsTo(MatakuliahKBK::class, 'id_matakuliah', 'id_matakuliah');
    }
}
