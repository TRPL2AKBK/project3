<?php

namespace App\Models;


use App\Models\DosenPengampu;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Traits\HasRoles;



class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;

    public $timestamps = false;
    protected $table = 'user';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'name',
        'email',
        'nidn',
        'password',
        'image',
        'updated_at',
        'created_at',
    ];

    protected $hidden = [
        'password',
    ];

    protected $casts = [
        'password' => 'hashed',
    ];

    public function level()
    {
        return $this->belongsTo('App\Models\Level', 'id_level');
    }

    public function dosen()
    {
        return $this->belongsTo('App\Models\Dosen', 'nidn', 'nidn');
    }

    public function pengampu()
    {
        return $this->belongsTo(DosenPengampu::class, 'nidn', 'nidn');
    }
}
