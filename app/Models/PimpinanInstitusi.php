<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory; 
use Illuminate\Database\Eloquent\Model;

class PimpinanInstitusi extends Model
{
    use HasFactory;

    protected $fillable = ['nama', 'user_id'];

    public function pengaduans()
    {
        return $this->hasMany(DataPengaduan::class, 'pimpinan_id');
    }

    public function kategoris()
    {
        return $this->belongsToMany(KategoriPengaduan::class, 'pimpinan_kategori', 'pimpinan_id', 'kategori_id');
    }
    
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }        
}
