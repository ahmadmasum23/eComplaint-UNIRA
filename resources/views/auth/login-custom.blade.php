<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - E-Complaint UNIRA</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #eaeaea;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            max-width: 500px;
            width: 100%;
            background: #fff;
            border-radius: 1rem;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .login-header {
            background: #ffffff;
            padding: 20px;
        }

        .login-header img {
            max-width: 100%;
            height: auto;
        }

        .login-title {
            color: white;
            font-size: 16px;
            margin: 10px 0;
        }

        .login-form {
            padding: 30px;
            background-color: #045604;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: black;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-button {
            background-color: #f59e0b;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
        }

        .forgot-password {
            text-align: right;
            font-size: 12px;
            color: #000;
        }

        .announcement {
            border: 1px solid #ddd;
            border-radius: 6px;
            background-color: #fff;
            padding: 16px;
            max-width: 700px;
            margin: auto;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            font-family: Arial, sans-serif;
        }

        .announcement h5 {
            margin-top: 0;
            margin-bottom: 16px;
            font-size: 18px;
            font-weight: bold;
            text-align: left;
        }

        .alert-box {
            background-color: #f8d7da;
            color: #721c24;
            padding: 12px 16px;
            border-radius: 4px;
            margin-bottom: 12px;
        }

        .alert-box a {
            color: #004085;
            text-decoration: none;
            font-weight: bold;
        }

        .alert-box a:hover {
            text-decoration: underline;
        }

        /* Add Flexbox for side-by-side layout */
        .form-row {
            display: flex;
            flex-wrap: wrap; /* Allow wrapping to next line if needed */
            gap: 15px; /* Space between form fields */
        }

        .form-group {
            flex: 1; /* Each form group takes equal space */
            min-width: 150px; /* Minimum width to prevent fields from becoming too narrow */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-header">
            <img src="{{ asset('images/login_back.jpg') }}" alt="UNIRA Logo">
        </div>
        <div class="login-form">
            <h2 class="login-title">SISTEM INFORMASI AKADEMIK MAHASISWA<br>UNIVERSITAS ISLAM RADEN RAHMAT</h2>
            <x-filament-panels::form wire:submit="authenticate">
                <div class="form-row"> <!-- Changed from 'from-group' to 'form-row' -->
                    @foreach ($this->form->getComponents() as $component)
                        <div class="form-group">
                            <label class="text-black block mb-1">{{ $component->getLabel() }}</label>
                            {{ $component }}
                        </div>
                    @endforeach
                </div>
                <x-filament-panels::form.actions :actions="[
                    \Filament\Forms\Components\Actions\Action::make('login')
                        ->label('Log In')
                        ->submit('authenticate')
                        ->color('warning'),
                ]" />
            </x-filament-panels::form>
            <div class="forgot-password">
                <a class="text-white">Lupa password?</a>
                <a href="#" class="text-blue-600 hover:underline text-sm">Klik disini</a>
            </div><br>
            <div class="announcement">
                <h5>ℹ️ Pengumuman</h5>
                <div class="alert-box">
                    <strong>Mahasiswa wajib mengisi NIK sesuai data kependudukan (KTP/KK)</strong><br>
                    Fungsi: Untuk reservasi nomor ijazah nasional pada <a href="#">PDDIKTI</a><br>
                    Cara: Masuk menu Mahasiswa - Portal - Sunting Biodata
                </div>
                <div class="alert-box">
                    <strong>Dosen dan Mahasiswa wajib mengisi angket Spada Indonesia</strong><br>
                    Laman angket <a href="#">e-Learning UNIRA</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>