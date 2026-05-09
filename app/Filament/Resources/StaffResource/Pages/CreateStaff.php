<?php

namespace App\Filament\Resources\StaffResource\Pages;

use App\Filament\Resources\StaffResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateStaff extends CreateRecord
{
    protected static string $resource = StaffResource::class;

    //Menghilangkan create & create Another
    protected static bool $canCreateAnother = false;

    protected function getRedirectUrl(): string
    {
        return StaffResource::getUrl('index'); // Redirect ke halaman utama setelah sukses
    }
}
