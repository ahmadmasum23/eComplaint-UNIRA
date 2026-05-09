<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use App\Jobs\CekStatusAduanJob;
use App\Models\KategoriPengaduan;

class DataPengaduan extends Model
{
    use HasFactory;

    protected $fillable = [
        'kode_aduan',
        'nama_pelapor',
        'email_pelapor',
        'pimpinan_id',
        'kategori_id',
        'deskripsi',
        'bukti_foto',
        'staff_id',
        'waktu_selesai',
        'keterangan_penolakan',
        'bukti_selesai',
        'status'
    ];

    // protected static function boot()
    // {
    //     parent::boot();
    
    //     static::creating(function ($pengaduan) {
    //         $pengaduan->kode_aduan = 'ADU-' . Str::upper(Str::random(8));
    
    //         if (!$pengaduan->status) {
    //             $pengaduan->status = 'Terkirim'; // Tambahkan default status
    //         }
    
    //         // Cari kategori berdasarkan pimpinan_id
    //         if ($pengaduan->pimpinan_id) {
    //             $kategori = KategoriPengaduan::where('pimpinan_id', $pengaduan->pimpinan_id)->first();
    //             if ($kategori) {
    //                 $pengaduan->kategori_id = $kategori->id;
    //             }
    //         }
    //     });
    // }

    // //Aduan Masuk SPI jika 4 Hari status tidak ditangani
    // protected static function booted()
    // {
    //     static::created(function ($aduan) {
    //         \App\Jobs\CekStatusAduanJob::dispatch($aduan->id)->delay(now()->addSeconds(4));
    //     });
    // }
    // //end code
    
    protected static function booted()
    {
        static::creating(function ($pengaduan) {
            $pengaduan->kode_aduan = 'ADU-' . Str::upper(Str::random(8));

            if (!$pengaduan->status) {
                $pengaduan->status = 'Terkirim';
            }

            if ($pengaduan->pimpinan_id && !$pengaduan->kategori_id) {
                $kategori = KategoriPengaduan::where('pimpinan_id', $pengaduan->pimpinan_id)->first();
                if ($kategori) {
                    $pengaduan->kategori_id = $kategori->id;
                }
            }
        });

        static::created(function ($aduan) {
            CekStatusAduanJob::dispatch($aduan->id)->delay(now()->addDays(4));
        });
    }


    public function kategori()
    {
        return $this->belongsTo(KategoriPengaduan::class, 'kategori_id');
    }

    public function pimpinan()
    {
        return $this->belongsTo(PimpinanInstitusi::class, 'pimpinan_id');
    } 

    public function staff()
    {
        return $this->belongsTo(Staff::class, 'staff_id');
    } 

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
