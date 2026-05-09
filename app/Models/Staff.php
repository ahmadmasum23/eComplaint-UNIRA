<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use HasFactory;

    protected $table = 'staff'; // Nama tabel

    protected $fillable = [
        'nama',
        'pimpinan_id',
        'user_id',
    ];

    // Relasi ke PimpinanInstitusi
    public function pimpinan()
    {
        return $this->belongsTo(PimpinanInstitusi::class, 'pimpinan_id');
    }

    // Relasi ke User
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
