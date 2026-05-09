<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\StatsDashboard;
use App\Filament\Widgets\BlogPostsChart;
use Filament\Pages\Dashboard as BaseDashboard;

class Dashboard extends BaseDashboard
{
    public function getWidgets(): array
    {
        return [
            StatsDashboard::class,
            BlogPostsChart::class,
        ];
    }
}
