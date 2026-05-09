<?php

namespace App\Filament\Resources\DataPengaduanResource\Pages;

use App\Filament\Resources\DataPengaduanResource;
use Filament\Resources\Pages\ViewRecord;
use Filament\Pages\Actions\Action;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\TextEntry;

class ViewDataPengaduan extends ViewRecord
{
    protected static string $resource = DataPengaduanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('kembali')
                ->label('Kembali')
                ->color('danger')
                ->icon('heroicon-o-arrow-left-circle')
                ->url(fn() => DataPengaduanResource::getUrl('index')),
        ];
    }       
}
