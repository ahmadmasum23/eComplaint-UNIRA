<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;
use App\Models\DataPengaduan;
use App\Models\KategoriPengaduan;

class BlogPostsChart extends ChartWidget
{
    protected static ?int $sort = 2;
    
    protected static ?string $heading = 'Kategori Pengaduan Populer';

    public function getColumnSpan(): int | string | array
    {
        return 'full'; //agar widget chart full lebar
    }

    protected function getData(): array
    {
        // Ambil data kategori yang sering diajukan
            $kategoriCount = DataPengaduan::select('kategori_id', \DB::raw('count(*) as total'))
            ->groupBy('kategori_id')
            ->orderByDesc('total')
            ->get();

        // Data untuk chart
        $labels = [];
        $data = [];

        foreach ($kategoriCount as $item) {
            $kategori = KategoriPengaduan::find($item->kategori_id);
            if ($kategori) {
                $labels[] = $kategori->nama; // Nama kategori
                $data[] = $item->total; // Jumlah pengaduan
            }
        }

        return [
            'datasets' => [
                [
                    'label' => 'Kategori Pengaduan Populer',
                    'data' => $data, // Jumlah pengaduan per kategori
                ],
            ],
            'labels' => $labels, // Nama kategori sebagai label
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
