<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\DataPengaduan;

class StatsDashboard extends BaseWidget
{
    protected static ?int $sort = 1;

    protected static ?string $pollingInterval = '5s'; // Refresh setiap 5 detik

    protected function getStats(): array
    {
        // Mengambil jumlah aduan berdasarkan status
        $totalAduan = DataPengaduan::count();
        $ditolak = DataPengaduan::where('status', 'Ditolak')->count();
        $didisposisi = DataPengaduan::where('status', 'Didisposisi')->count();
        $selesai = DataPengaduan::where('status', 'Selesai')->count();

        return [
            Stat::make('Pengaduan masuk', $totalAduan)
                ->description('Jumlah Aduan')
                ->descriptionIcon('heroicon-o-inbox')
                ->color('primary'), // Menambahkan warna
            
            Stat::make('Pengaduan ditolak', $ditolak)
                ->description('Ditolak')
                ->descriptionIcon('heroicon-o-x-circle')
                ->color('danger'), // Warna merah
        
            Stat::make('Pengaduan sedang disposisi', $didisposisi)
                ->description('Didisposisi')
                ->descriptionIcon('heroicon-o-clock')
                ->color('warning'), // Warna kuning
        
            Stat::make('Pengaduan selesai', $selesai)
                ->description('Selesai')
                ->descriptionIcon('heroicon-o-check-circle')
                ->color('success'), // Warna hijau
        ];        
    }
}
