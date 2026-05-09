<?php

namespace App\Filament\Resources\PimpinanInstitusiResource\Pages;

use App\Filament\Resources\PimpinanInstitusiResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPimpinanInstitusis extends ListRecords
{
    protected static string $resource = PimpinanInstitusiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tambah Baru'),
        ];
    }

    public function getTitle(): string
    {
        return "Pimpinan Institusi";
    }

    public function getBreadcrumbs(): array
    {
        return [];
    }
}
