<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProposalTa extends Model
{
    protected $table = 'ref_proposal_ta';
    protected $primaryKey = 'id_proposal_ta ';
    protected $fillable = [
        'nobp  ',
        'dokumen',

    ];

    public function mahasiswa()
    {
        return $this->belongsTo('App\Models\Mahasiswa', 'nobp', 'nobp');
    }
}
