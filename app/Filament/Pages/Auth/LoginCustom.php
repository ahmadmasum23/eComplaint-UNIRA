<?php

namespace App\Filament\Pages\Auth;

use Filament\Pages\Auth\Login as BaseLogin;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use Filament\Http\Responses\Auth\Contracts\LoginResponse;
use Filament\Notifications\Notification;

class LoginCustom extends BaseLogin
{
    // protected static string $view = 'auth.login-custom';

    public function getHeading(): string
    {
        return '';
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('username')
                    ->label('Username')
                    ->placeholder('Masukkan username Anda')
                    ->required()
                    ->autocomplete('username')
                    ->autofocus(),
                $this->getPasswordFormComponent(),
            ]);
    }

    public function authenticate(): ?LoginResponse
    {
        $data = $this->form->getState();
    
        $userModel = config('auth.providers.users.model');
    
        $loginField = filter_var($data['username'], FILTER_VALIDATE_EMAIL) ? 'email' : 'name';
    
        $user = $userModel::where($loginField, $data['username'])->first();
    
        if (! $user || ! Hash::check($data['password'], $user->password)) {
            Notification::make()
                ->title('Login Gagal')
                ->body('Username atau password salah. Silakan coba lagi.')
                ->danger()
                ->send();
    
            throw ValidationException::withMessages([
                'username' => __('Username atau password salah. Silakan coba lagi.'),
            ]);
        }
    
        Auth::guard(config('filament.auth.guard'))->login($user, $data['remember'] ?? false);
    
        Notification::make()
            ->title('Login Berhasil')
            ->body('Selamat datang, ' . $user->name)
            ->success()
            ->send();
    
        return app(LoginResponse::class);
    }    

    protected function getPasswordFormComponent(): TextInput
    {
        return TextInput::make('password')
            ->label('Password')
            ->placeholder('Masukkan kata sandi Anda')
            ->password()
            ->required()
            ->autocomplete('current-password')
            ->extraInputAttributes(['tabindex' => 2]);
    }
}