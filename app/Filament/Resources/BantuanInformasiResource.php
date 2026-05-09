<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BantuanInformasiResource\Pages;
use App\Filament\Resources\BantuanInformasiResource\RelationManagers;
use App\Models\BantuanInformasi;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Spatie\Permission\Traits\HasRoles;


class BantuanInformasiResource extends Resource
{
    protected static ?string $model = BantuanInformasi::class;
    protected static ?string $navigationLabel = 'Bantuan & Informasi';
    protected static ?string $navigationIcon = 'heroicon-o-cog';
    protected static ?string $slug = 'bantuan-informasi';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()
                    ->schema([
                    TextInput::make('nama')
                        ->label('Informasi Tentang')
                        ->required(),
                    RichEditor::make('deskripsi')
                        ->label('Deskripsi')   
                        ->required(),                 
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nama')
                    ->label('Informasi Tentang'),
                // TextColumn::make('deskripsi')
                //     ->label('Deskripsi Penjelasan')
                //     ->formatStateUsing(fn (string $state) => strip_tags($state)) // Menghapus tag HTML
                //     ->limit(20),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make()
                    ->label('Lihat Detail'),
                Tables\Actions\EditAction::make()
                    ->visible(fn () => auth()->user()?->hasRole('Admin')),
            ])
            ->bulkActions([
                //
            ]);
    }
    
    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListBantuanInformasis::route('/'),
            'create' => Pages\CreateBantuanInformasi::route('/create'),
            'edit' => Pages\EditBantuanInformasi::route('/{record}/edit'),
        ];
    }
}
