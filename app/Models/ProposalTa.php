<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProposalTa extends Model
{
    protected $table = 'proposal_ta';
    protected $primaryKey = 'id_proposal_ta';
    protected $fillable = [
        'id_proposal_ta',
        'nim',
        'nama',
        'judul',
        'pembimbing_satu_nama',
        'pembimbing_satu_nidn',
        'pembimbing_dua_nama',
        'pembimbing_dua_nidn',

    ];

    public $timestamps = false;
}
