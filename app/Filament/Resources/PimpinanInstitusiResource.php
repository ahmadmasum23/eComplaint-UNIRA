<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PimpinanInstitusiResource\Pages;
use App\Filament\Resources\PimpinanInstitusiResource\RelationManagers;
use App\Models\PimpinanInstitusi;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Section;
use Filament\Tables\Actions\DeleteAction;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;

class PimpinanInstitusiResource extends Resource
{
    protected static ?string $model = PimpinanInstitusi::class;

    // Mengubah label untuk tombol create
    // protected static ?string $modelLabel = 'Aduan';
    // protected static ?string $pluralModelLabel = 'Pengaduan';

    protected static ?string $navigationIcon = 'heroicon-o-user';

    protected static ?string $navigationLabel = 'Pemimpin Institusi';

    protected static ?string $slug = 'pemimpin-institusi';

    protected static ?string $navigationGroup = 'Source';

    protected static ?int $navigationSort = 31;

    // protected static ?string $breadcrumb = 'Data Pengaduan';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()
                    ->schema([
                        TextInput::make('nama')
                            ->label('Pimpinan Institusi')
                            ->required()
                            ->maxLength(255)
                            ->unique(PimpinanInstitusi::class, 'nama') // Cegah duplikasi
                            ->validationMessages([
                                'unique' => 'Nama pimpinan sudah ada! Silakan gunakan nama lain.',
                            ]),
                        Select::make('user_id')
                            ->label('User')
                            ->relationship('user', 'name') // Menampilkan nama user dari tabel users
                            ->searchable()
                            ->preload()
                            ->nullable(),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nama')
                ->label('Nama Kategori')
                ->searchable(),  
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                Tables\Actions\DeleteBulkAction::make(),
                ]),
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
            'index' => Pages\ListPimpinanInstitusis::route('/'),
            'create' => Pages\CreatePimpinanInstitusi::route('/create'),
            'edit' => Pages\EditPimpinanInstitusi::route('/{record}/edit'),
        ];
    }
}
