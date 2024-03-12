<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\Dosen as Authenticatable;
use Illuminate\Database\Eloquent\Model;
use App\Models\Prodi;


class Dosen extends Model
{
    protected $table = 'dosen';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'name',
        'nidn',
        'nip',
        'gender',
        'id_prodi',
        'id_bidang',
        'email',
        'image',
        'status',
    ];

    public function prodi()
    {
        return $this->belongsTo('App\Models\Prodi', 'id_prodi');
    }
}
