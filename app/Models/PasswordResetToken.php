<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PasswordResetToken extends Model
{
    protected $table = 'password_reset_tokens'; // Nama tabel yang benar
    protected $primaryKey = 'email'; // Primary key adalah email

    protected $keyType = 'string'; // Tipe data primary key adalah string

    public $incrementing = false; // Primary key tidak incrementing
    protected $fillable = [
        'email', 'token', 'created_at'
    ];

    public $timestamps = false; // Jika tabel tidak menggunakan kolom created_at dan updated_at
}
