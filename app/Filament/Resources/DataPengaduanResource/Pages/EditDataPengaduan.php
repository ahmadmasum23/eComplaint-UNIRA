<?php

namespace App\Filament\Resources\DataPengaduanResource\Pages;

use App\Filament\Resources\DataPengaduanResource;
use App\Models\DataPengaduan;
use App\Models\User;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;

class EditDataPengaduan extends EditRecord
{
    protected static string $resource = DataPengaduanResource::class;
    
    protected function getRedirectUrl(): string
    {
        return DataPengaduanResource::getUrl('index');
    }
}
