<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Resources\Pages\CreateRecord;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Facades\Hash;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationIcon = 'heroicon-o-user';

    protected static ?string $navigationLabel = 'User';

    protected static ?string $slug = 'user';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()
                    ->schema([
                        TextInput::make('name')
                            ->label('Username')
                            ->required(),

                        TextInput::make('email')
                            ->label('Email')
                            ->email()
                            ->unique(User::class, 'email') // Cegah duplikasi
                            ->validationMessages([
                                'unique' => 'Email sudah pernah dibuat! Silakan gunakan email lain.',
                            ])
                            ->required(),

                        TextInput::make('password')
                            ->label('Password')
                            ->password()
                            ->dehydrateStateUsing(fn (string $state): string => Hash::make($state))
                            ->dehydrated(fn (?string $state): bool => filled($state))
                            ->required(fn (): bool => request()->routeIs('filament.admin.resources.users.create')),

                        // TextInput::make('whatsapp')
                        //     ->label('Nomor WhatsApp')
                        //     ->tel()
                        //     ->prefix('+62')
                        //     ->maxLength(15)
                        //     ->placeholder('81234567890'),

                        Select::make('roles')
                            ->label('Role')
                            ->multiple()
                            ->relationship('roles', 'name')
                            ->reactive()
                            ->afterStateUpdated(fn ($set, $state) =>
                                $set('showKategoriLevel', in_array(3, $state)) // Ganti dengan ID (3) user
                            ),
                        
                        Select::make('kategori_level')
                            ->label('Kategori Level')
                            ->options([
                                'mahasiswa' => 'Mahasiswa',
                                'dosen' => 'Dosen',
                                'tendik' => 'Tendik',
                            ])
                            ->placeholder('Pilih sesuai kategori')
                            ->visible(fn ($get) => $get('showKategoriLevel') ?? false),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->label('Username')
                    ->searchable(),
                TextColumn::make('email')
                    ->label('Email'),
                // TextColumn::make('whatsapp')
                //     ->label('Nomor WhatsApp'),
            ])
            ->filters([
                // Tambahkan filter jika diperlukan
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
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
            // Tambahkan jika ada hubungan
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }
}
