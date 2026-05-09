<?php

namespace App\Filament\Resources;

use App\Filament\Resources\KategoriPengaduanResource\Pages;
use App\Models\KategoriPengaduan;
use App\Models\PimpinanInstitusi;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;

class KategoriPengaduanResource extends Resource
{
    protected static ?string $model = KategoriPengaduan::class;

    // Mengubah label untuk tombol create
    // protected static ?string $modelLabel = 'Aduan';
    // protected static ?string $pluralModelLabel = 'Pengaduan';

    protected static ?string $navigationIcon = 'heroicon-o-folder';

    protected static ?string $navigationLabel = 'Kategori Pengaduan';

    protected static ?string $slug = 'kategori-pengaduan';

    protected static ?string $navigationGroup = 'Source';

    protected static ?int $navigationSort = 32;

    protected static ?string $breadcrumb = 'Data Pengaduan';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()
                    ->schema([
                    TextInput::make('nama')
                        ->label('Nama Kategori')
                        ->unique(KategoriPengaduan::class, 'nama') // Validasi unik
                        ->validationMessages([
                            'unique' => 'Kategori sudah ada! Silakan gunakan kategori lain.',
                        ])
                        ->required()
                        ->maxLength(255),
                    Select::make('pimpinan')
                        ->label('Pimpinan Institusi')
                        ->multiple() // Menjadikan relasi many-to-many
                        ->relationship('pimpinan', 'nama')
                        ->searchable()
                        ->preload(),                    
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
                // Tambahkan filter jika diperlukan
            ])
            ->actions([
                EditAction::make(),
                DeleteAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageKategoriPengaduans::route('/'),
        ];
    }
}
