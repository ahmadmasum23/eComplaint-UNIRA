<?php

namespace App\Filament\Resources\PimpinanInstitusiResource\Pages;

use App\Filament\Resources\PimpinanInstitusiResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;


class EditPimpinanInstitusi extends EditRecord
{
    protected static string $resource = PimpinanInstitusiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return PimpinanInstitusiResource::getUrl('index'); // Redirect ke halaman utama setelah sukses
    }
}
