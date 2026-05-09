<?php

namespace App\Filament\Resources\DataPengaduanResource\Pages;

use Filament\Notifications\Notification;
use Illuminate\Validation\ValidationException;
use Filament\Resources\Pages\CreateRecord;
use App\Filament\Resources\DataPengaduanResource;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Filament\Actions\RedirectAction;
use App\Models\PimpinanInstitusi;
use App\Models\DataPengaduan;
use Filament\Actions;
use App\Jobs\CekStatusAduanJob;
use Filament\Actions\Action;



class CreateDataPengaduan extends CreateRecord
{
    protected static string $resource = DataPengaduanResource::class;

    //Menghilangkan create & create Another
    protected static bool $canCreateAnother = false;

    protected function getRedirectUrl(): string
    {    
        $namaPelapor = Auth::user()->name;
    
        // Ambil pimpinan institusi berdasarkan pimpinan_id dari aduan
        $pimpinan = User::whereHas('pimpinanInstitusi', function ($query) {
            $query->where('id', $this->record->pimpinan_id);
        })->get();
    
        // Ambil semua user dengan role "admin"
        $admins = User::whereHas('roles', function ($query) {
            $query->where('name', 'admin');
        })->get();
    
        // Kirim notifikasi ke pimpinan terlebih dahulu
        $pimpinan->each(function ($user) use ($namaPelapor) {
            Notification::make()
                ->success()
                ->title('Aduan Baru dari ' . $namaPelapor)
                ->body('Silakan cek detailnya!')
                ->sendToDatabase($user);
        });
    
        // Setelah itu, kirim notifikasi ke admin
        $admins->each(function ($user) use ($namaPelapor) {
            Notification::make()
                ->success()
                ->title('Aduan Baru dari ' . $namaPelapor)
                ->body('Silakan cek detailnya!')
                ->sendToDatabase($user);
        });
    
        return DataPengaduanResource::getUrl('index'); // Redirect ke halaman utama setelah sukses
    }       
    
    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $data['user_id'] = Auth::id();
        $data['nama_pelapor'] = Auth::user()->name;
        $data['email_pelapor'] = Auth::user()->email;
    
        // Cek apakah aduan dengan pimpinan_id dan kategori_id yang sama sudah pernah dibuat oleh user ini
        $existingAduan = DataPengaduan::where('email_pelapor', $data['email_pelapor'])
            ->where('pimpinan_id', $data['pimpinan_id'])
            ->where('kategori_id', $data['kategori_id'])
            ->exists();
    
        if ($existingAduan) {
            // Kirim notifikasi ke UI
            Notification::make()
                ->title('Aduan Sudah Pernah Dibuat!')
                ->body('Aduan dengan pimpinan dan kategori yang sama telah diajukan sebelumnya. Cek riwayat aduan Anda.')
                ->danger()
                ->persistent()
                ->actions([
                    \Filament\Notifications\Actions\Action::make('Lihat Aduan')
                        ->button()
                        ->url(DataPengaduanResource::getUrl('index'))
                ])
                ->send();
    
            // Lemparkan validation exception agar form tidak tersubmit
            throw ValidationException::withMessages([
                'kategori_id' => 'Aduan dengan pimpinan dan kategori yang sama sudah pernah dibuat.'
            ]);
        }
    
        return $data;
    }

    protected function getFormActions(): array
    {
        return [
            Action::make('back')
                ->label('Kembali')
                ->color('danger')
                ->url(DataPengaduanResource::getUrl('index')),

            $this->getCreateFormAction()
                ->label('Buat Pengaduan'),
        ];
    }
}