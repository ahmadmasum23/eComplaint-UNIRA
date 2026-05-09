<?php

namespace App\Filament\Resources\BantuanInformasiResource\Pages;

use App\Filament\Resources\BantuanInformasiResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBantuanInformasis extends ListRecords
{
    protected static string $resource = BantuanInformasiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tambah Baru')
                ->visible(fn () => auth()->user()?->hasRole('Admin')), // hanya Admin yang bisa lihat tombol,
        ];
    }

    public function getBreadcrumbs(): array
    {
        return [];
    }

    public function getTitle(): string
    {
        return 'Bantuan & Informasi';
    }
}
