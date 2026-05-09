<?php

namespace App\Jobs;

use App\Models\DataPengaduan;
use App\Models\PimpinanInstitusi;
use App\Enums\Status;
use Illuminate\Bus\Queueable;
use Illuminate\Support\Facades\Log;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class CekStatusAduanJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public int $aduanId;

    public function __construct(int $aduanId)
    {
        $this->aduanId = $aduanId;
    }

    public function handle(): void
    {
        $aduan = DataPengaduan::find($this->aduanId);

        // Hentikan jika aduan tidak ditemukan atau statusnya sudah berubah
        if (!$aduan || $aduan->status !== Status::Terkirim->value) {
            return;
        }

        // Cari pimpinan SPI
        $spi = PimpinanInstitusi::where('nama', 'Satuan Pengawas Internal')->first();

        if ($spi && $aduan->pimpinan_id !== $spi->id) {
            $aduan->update([
                'pimpinan_id' => $spi->id,
                'status' => Status::Expired->value,
                // status tetap 'Terkirim'
            ]);

            Log::info("Aduan ID {$aduan->id} dialihkan ke SPI & ditandai Expired.");
        }
    }
}
