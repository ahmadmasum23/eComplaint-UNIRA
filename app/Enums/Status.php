<?php

namespace App\Enums;

use Filament\Support\Contracts\HasLabel;

enum Status: string implements HasLabel
{
    case Terkirim = 'Terkirim';
    case Ditolak = 'Ditolak';
    case Diproses = 'Diproses';
    case Selesai = 'Selesai';
    case Didisposisi = 'Didisposisi';
    case Expired = 'Expired';
    
    public function getLabel(): ?string
    {
        // return $this->name;
        
        // or
    
        return match ($this) {
            self::Terkirim => 'Terkirim',
            self::Ditolak => 'Ditolak',
            self::Diproses => 'Diproses',
            self::Selesai => 'Selesai',
            self::Didisposisi => 'Didisposisi',
            self::Expired => 'Expired',
        };
    }
}