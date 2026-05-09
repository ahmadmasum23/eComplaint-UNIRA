<?php

namespace App\Filament\Resources;

use App\Filament\Resources\StaffResource\Pages;
use App\Filament\Resources\StaffResource\RelationManagers;
use App\Models\Staff;
use App\Models\User;
use App\Models\PimpinanInstitusi;
use App\Filament\Resources\PimpinanInstitusiResource;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class StaffResource extends Resource
{
    protected static ?string $model = Staff::class;
    protected static ?string $navigationIcon = 'heroicon-o-user';
    protected static ?string $navigationLabel = 'Departemen';
    protected static ?string $slug = 'departemen';

    public static function form(Form $form): Form
    {
        return $form
        ->schema([
                Forms\Components\TextInput::make('nama')
                    ->label('Nama Staff')
                    ->required()
                    ->maxLength(255)
                    ->unique(ignoreRecord: true) // Mengabaikan record saat edit
                    ->validationMessages([
                        'unique' => 'Nama Staff ini sudah ada, silakan gunakan nama lain.']),
        
                Forms\Components\Select::make('pimpinan_id')
                    ->label('Pimpinan Institusi')
                    ->options(fn () => PimpinanInstitusi::pluck('nama', 'id')->toArray())
                    ->searchable()
                    ->preload()
                    ->required(),            

                Forms\Components\Select::make('user_id')
                    ->label('Akun User')
                    ->options(User::pluck('name', 'id'))
                    // ->options(User::all()->pluck('name', 'id')) // Ambil daftar pengguna
                    ->searchable()
                    ->preload()
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama')
                    ->label('Nama Staff')
                    ->searchable(),

                Tables\Columns\TextColumn::make('pimpinan.nama')
                    ->label('Pimpinan Institusi')
                    ->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListStaff::route('/'),
            'create' => Pages\CreateStaff::route('/create'),
            'edit' => Pages\EditStaff::route('/{record}/edit'),
        ];
    }
}
