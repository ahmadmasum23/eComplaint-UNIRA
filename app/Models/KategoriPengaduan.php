<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KategoriPengaduan extends Model
{
    use HasFactory;

    protected $fillable = ['nama', 'pimpinan_id'];

    public function pengaduan()
    {
        return $this->hasMany(DataPengaduan::class, 'kategori_id');
    }

    public function pimpinan()
    {
        return $this->belongsToMany(PimpinanInstitusi::class, 'pimpinan_kategori', 'kategori_id', 'pimpinan_id');
    }    

    public function pimpinanInstitusis()
    {
        return $this->belongsToMany(PimpinanInstitusi::class, 'pimpinan_kategori', 'kategori_id', 'pimpinan_id');
    }    
}

