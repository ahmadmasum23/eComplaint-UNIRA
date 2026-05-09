<?php

namespace App\Filament\Resources\BantuanInformasiResource\Pages;

use App\Filament\Resources\BantuanInformasiResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditBantuanInformasi extends EditRecord
{
    protected static string $resource = BantuanInformasiResource::class;

    protected function getRedirectUrl(): string
    {
        return BantuanInformasiResource::getUrl('index'); // Redirect ke halaman utama setelah sukses
    }
}
