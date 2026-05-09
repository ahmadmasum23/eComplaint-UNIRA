<?php

namespace App\Exports;

use App\Models\DataPengaduan;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class DataPengaduanExport implements FromCollection, WithHeadings, WithStyles, ShouldAutoSize
{
    public function collection()
    {
        return DataPengaduan::with(['pimpinan', 'kategori', 'staff'])->get()->map(function ($item) {
            return [
                'kode_aduan' => $item->kode_aduan,
                'nama_pelapor' => $item->nama_pelapor,
                'email_pelapor' => $item->email_pelapor,
                'nama_pimpinan' => $item->pimpinan->nama ?? '-', // ganti dari ID ke nama
                'nama_kategori' => $item->kategori->nama ?? '-', // ganti dari ID ke nama
                'deskripsi' => $item->deskripsi,
                'bukti_foto' => $item->bukti_foto,
                'nama_staff' => $item->staff->nama ?? '-', // ganti dari ID ke nama
                'waktu_selesai' => $item->waktu_selesai,
                'keterangan_penolakan' => $item->keterangan_penolakan,
                'status' => $item->status,
            ];
        });
    }

    public function headings(): array
    {
        return [
            'Kode Aduan',
            'Nama Pelapor',
            'Email Pelapor',
            'Nama Pimpinan',
            'Kategori',
            'Deskripsi',
            'Bukti Foto',
            'Nama Staff',
            'Waktu Selesai',
            'Keterangan Penolakan',
            'Status',
        ];
    }

    public function styles(Worksheet $sheet)
    {
        return [
            1 => [
                'font' => ['bold' => true],
                'fill' => [
                    'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                    'startColor' => ['rgb' => '00AE68']
                ],
            ],
        ];
    }
}
