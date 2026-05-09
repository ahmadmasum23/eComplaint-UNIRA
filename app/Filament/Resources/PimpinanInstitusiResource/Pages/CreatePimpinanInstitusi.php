<?php

namespace App\Filament\Resources\PimpinanInstitusiResource\Pages;

use App\Filament\Resources\PimpinanInstitusiResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;
use Filament\Actions\CreateAction;

class CreatePimpinanInstitusi extends CreateRecord
{
    protected static string $resource = PimpinanInstitusiResource::class;

    //Menghilangkan create & create Another
    protected static bool $canCreateAnother = false;

    protected function getRedirectUrl(): string
    {
        return PimpinanInstitusiResource::getUrl('index'); // Redirect ke halaman utama setelah sukses
    }
}
