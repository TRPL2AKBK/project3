<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChangeLog extends Model
{
    protected $fillable = ['user_id', 'changes'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
