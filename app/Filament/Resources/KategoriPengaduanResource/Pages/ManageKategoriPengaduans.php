<?php

namespace App\Filament\Resources\KategoriPengaduanResource\Pages;

use App\Filament\Resources\KategoriPengaduanResource;
use Filament\Actions;
use Filament\Resources\Pages\ManageRecords;

class ManageKategoriPengaduans extends ManageRecords
{
    protected static string $resource = KategoriPengaduanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tambah Baru'),
        ];
    }

    public function getTitle(): string
    {
        return "Kategori Pengaduan";
    }
}
