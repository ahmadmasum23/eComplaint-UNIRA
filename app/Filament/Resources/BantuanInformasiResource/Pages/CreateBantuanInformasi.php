<?php

namespace App\Filament\Resources\BantuanInformasiResource\Pages;

use App\Filament\Resources\BantuanInformasiResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateBantuanInformasi extends CreateRecord
{
    //Menghilangkan create & create Another
    protected static bool $canCreateAnother = false;

    protected static string $resource = BantuanInformasiResource::class;

    protected function getRedirectUrl(): string
    {
        return BantuanInformasiResource::getUrl('index'); // Redirect ke halaman utama setelah sukses
    }
}
