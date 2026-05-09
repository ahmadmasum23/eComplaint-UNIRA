<?php

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\Resources\UserResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateUser extends CreateRecord
{
    protected static string $resource = UserResource::class;

    //Menghilangkan create & create Another
    protected static bool $canCreateAnother = false;

    protected function getRedirectUrl(): string
    {
        return UserResource::getUrl('index'); // Redirect ke halaman utama setelah sukses
    }
}