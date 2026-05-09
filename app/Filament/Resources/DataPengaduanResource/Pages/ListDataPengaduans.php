<?php

namespace App\Filament\Resources\DataPengaduanResource\Pages;

use App\Filament\Resources\DataPengaduanResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Facades\Filament;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\DataPengaduanExport;
use Illuminate\Support\Facades\Auth;
use Filament\Resources\Pages\ListRecords;


class ListDataPengaduans extends ListRecords
{
    protected static string $resource = DataPengaduanResource::class;

    protected function getHeaderActions(): array
    {
        $user = Filament::auth()->user();

        $actions = [
            Actions\CreateAction::make()->label('Buat Pengaduan'),
        ];

        if (
            $user->hasRole('Admin') //||
            // $user->hasRole('Staff') ||
            // $user->hasRole('Pimpinan Institusi')
        ) {
            $actions[] = Action::make('Export ke Excel')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('success')
                ->action(function () {
                    return Excel::download(new DataPengaduanExport, 'data_pengaduan.xlsx');
                });
        }

        return $actions;
    }

    public function getTitle(): string
    {
        return "Data Pengaduan";
    }

    public function getBreadcrumbs(): array
    {
        return [];
    }
}