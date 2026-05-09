<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Http;

class FonnteHelper
{
    public static function sendWhatsAppNotification($nomor, $pesan)
    {
        $token = env('FONNTE_TOKEN'); // Simpan token di .env
        $response = Http::withHeaders([
            'Authorization' => $token
        ])->post('https://api.fonnte.com/send', [
            'target' => $nomor,
            'message' => $pesan,
            'countryCode' => '62', // Indonesia
        ]);

        return $response->json();
    }
}
