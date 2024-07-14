<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tahun extends Model
{
    protected $table = 'smt_thn_akd';
    protected $primaryKey = 'id_smt_thn_akd';
    protected $fillable = [
        'id_smt_thn_akd',
        'smt_thn_akd',
        'status',
    ];

    public $timestamps = false;

    public static function updateTahun($id_smt_thn_akd, $tahun)
    {
        return self::where('id_smt_thn_akd', $id_smt_thn_akd)->update($tahun);
    }
}
