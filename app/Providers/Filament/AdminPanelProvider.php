<?php

namespace App\Providers\Filament;

use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\AuthenticateSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Althinect\FilamentSpatieRolesPermissions\FilamentSpatieRolesPermissionsPlugin;
use Filament\Navigation\NavigationBuilder;
use Filament\Navigation\NavigationGroup;
use Filament\Navigation\NavigationItem;
use App\Filament\Resources\DataPengaduanResource;
use App\Filament\Resources\PimpinanInstitusiResource;
use App\Filament\Resources\KategoriPengaduanResource;
use App\Filament\Resources\UserResource;
use App\Filament\Resources\StaffResource;
use App\Filament\Pages\Auth\LoginCustom;
use App\Filament\Resources\BantuanInformasiResource;


class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('admin')
            ->path('ecomplaint')
            ->brandName('E-Complaint')
            ->brandLogo(asset('images/Logo.png'))
            ->brandLogoHeight('60px')
            ->favicon(asset('images/icon.png'))
            ->login(LoginCustom::class)
            ->colors([
                'primary' => '#015C9B',
            ])
            
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                Pages\Dashboard::class,
            ])
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            // ->widgets([
            //     \App\Filament\Widgets\StatsDashboard::class,
            //     \App\Filament\Widgets\BlogPostsChart::class,
            //     // Widgets\AccountWidget::class,
            // ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->plugin(FilamentSpatieRolesPermissionsPlugin::make())
            ->navigation(function (NavigationBuilder $builder): NavigationBuilder {
                $user = auth()->user();
                $isAdmin = $user && $user->hasRole('Admin');

                return $builder->groups(array_filter([
                    NavigationGroup::make('E-Complaint')
                        ->items(array_merge(
                            [
                                NavigationItem::make('Dashboard')
                                    ->icon('heroicon-o-home')
                                    ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.pages.dashboard'))
                                    ->url(fn (): string => Pages\Dashboard::getUrl()),
                            ],
                            DataPengaduanResource::getNavigationItems() ?? [],
                            BantuanInformasiResource::getNavigationItems() ?? [],
                        )),

                    $isAdmin ? NavigationGroup::make('Kelola Data Pengaduan')
                        ->items(array_merge(
                            // DataPengaduanResource::getNavigationItems() ?? [],
                            KategoriPengaduanResource::getNavigationItems() ?? [],
                            StaffResource::getNavigationItems() ?? [],
                            PimpinanInstitusiResource::getNavigationItems() ?? []
                        )) : null,

                    $isAdmin ? NavigationGroup::make('Setting')
                        ->items(array_merge(
                            UserResource::getNavigationItems() ?? [],
                            [
                                NavigationItem::make('Roles')
                                    ->icon('heroicon-o-user-group')
                                    ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.resource.roles.*'))
                                    ->url(fn (): string => '/admin/roles'),
                                // NavigationItem::make('Permissions')
                                //     ->icon('heroicon-o-lock-closed')
                                //     ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.resource.permissions.*'))
                                //     ->url(fn (): string => '/admin/permissions'),
                            ]
                        )) : null,
                ]));
            })
            ->databaseNotifications();
    }
}