<?php

namespace App\Filament\Resources;

use App\Enums\Status;
use App\Filament\Resources\DataPengaduanResource\Pages;
use App\Models\User;
use App\Models\Staff;
use App\Models\DataPengaduan;
use App\Models\PimpinanInstitusi;
use App\Models\KategoriPengaduan;
use Filament\Forms\Form;
use Filament\Actions\Action;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Illuminate\Support\Facades\Storage;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Filters\Filter;
use Illuminate\Database\Eloquent\Builder; 
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Filament\Widgets\Widget;
use Filament\Infolists\Components\RepeatableEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\IconEntry;
use Filament\Infolists\Components\ImageEntry;
use Filament\Infolists\Infolist;

class DataPengaduanResource extends Resource
{
    protected static ?string $model = DataPengaduan::class;

    // Mengubah label untuk tombol create
    protected static ?string $modelLabel = 'Aduan';

    protected static ?string $pluralModelLabel = 'Pengaduan';

    protected static ?string $navigationIcon = 'heroicon-o-megaphone';
    
    protected static ?string $navigationLabel = 'Data Pengaduan';

    protected static ?string $slug = 'data-pengaduan';

    protected static ?string $navigationGroup = 'Source';

    protected static ?int $navigationSort = 31;

    protected static ?string $breadcrumb = 'Data Pengaduan';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Section::make()->schema([
                TextInput::make('kode_aduan')
                    ->label('Kode Aduan')
                    ->disabled()
                    ->readOnly()
                    ->dehydrated()
                    ->afterStateHydrated(fn ($state, $set) => $set('kode_aduan', $state ?? 'Kode akan dibuat setelah disimpan')),                           

                Select::make('pimpinan_id')
                    ->label('Pimpinan')
                    ->options(PimpinanInstitusi::pluck('nama', 'id'))
                    ->live()// Agar berubah secara real-time
                    ->placeholder('Pilih Instansi Tujuan')
                    ->disabled(fn () => Auth::user()->hasRole(['Admin', 'Pimpinan Institusi','Staff']))
                    ->reactive(),             

                Select::make('kategori_id')
                    ->label('Kategori Pengaduan')
                    ->preload()
                    ->options(function ($get) {
                        $user = Auth::user();
                        $kategoriLevel = $user->kategori_level;

                        $pimpinan = PimpinanInstitusi::find($get('pimpinan_id'));

                        if (!$pimpinan) {
                            return [];
                        }

                        $kategoris = $pimpinan->kategoris;

                        // Filter kategori sesuai dengan kategori_level
                        return match ($kategoriLevel) {
                            'mahasiswa' => $kategoris
                                ->whereIn('nama', ['Akademik','Administrasi Akademik','Layanan Perpustakaan',
                                                    'Laboratorium Dasar','Microteaching','Pelayanan Umum','Beasiswa','Pengelolaan Keuangan',
                                                    'Pemeliharaan Fasilitas','Inkubator Bisnis','Lembaga Pemeriksaan Halal','Pelayanan Administrasi Keuangan',
                                                    'Penerimaan Mahasiswa Baru','Layanan Kemahasiswaan & Ikatan Alumni','Keagamaan','Karir dan Konseling',
                                                    'Pesantren Mahasiswa','Riset dan Publikasi','Kerjasama','Humas',
                                                    'Kajian Jawa & Kearifan Lokal','Penanggulangan Risiko Bencana','Riset Desa','Pelayanan Sistem Informasi',
                                                    'Pelayanan Tidak Transparan','Penyalahgunaan Wewenang','Korupsi dan Penggelapan','Kecurangan Akademik',
                                                    'Etika dan Perilaku','Pengawasan Proses Administrasi','Keamanan dan Keselamatan'
                                                    ])
                                ->pluck('nama', 'id'),

                            'dosen' => $kategoris
                                ->whereIn('nama', ['Akademik','Administrasi Akademik', 'Layanan Perpustakaan','Laboratorium Dasar','Microteaching',
                                                    'Pelayanan Umum','Pengelolaan SDM dan Kepegawaian','Penggajian dan Tunjangan','Pengelolaan Keuangan',
                                                    'Pemeliharaan Fasilitas','Inkubator Bisnis','Lembaga Pemeriksaan Halal','Pengelolaan Inventaris',
                                                    'Pelayanan Administrasi Keuangan','Keagamaan','Riset dan Publikasi','Kerjasama',
                                                    'Humas','Kajian Jawa & Kearifan Lokal','Penanggulangan Risiko Bencana','Riset Desa',
                                                    'Pelayanan Sistem Informasi','Pelayanan Tidak Transparan','Penyalahgunaan Wewenang','Korupsi dan Penggelapan',
                                                    'Kecurangan Akademik','Etika dan Perilaku','Pengelolaan Aset Kampus','Pengawasan Proses Administrasi','Keamanan dan Keselamatan'
                                                    ])
                                ->pluck('nama', 'id'),

                            'tendik' => $kategoris
                                ->whereIn('nama', ['Pengelolaan SDM dan Kepegawaian','Penggajian dan Tunjangan','Pengelolaan Keuangan',
                                                    'Pemeliharaan Fasilitas','Pengelolaan Inventaris','Pengelolaan Inventaris', 'Keagamaan',
                                                    'Penanggulangan Risiko Bencana','Pelayanan Sistem Informasi','Pelayanan Tidak Transparan','Penyalahgunaan Wewenang',
                                                    'Korupsi dan Penggelapan','Etika dan Perilaku','Pengawasan Proses Administrasi','Keamanan dan Keselamatan'
                                                    ])
                                ->pluck('nama', 'id'),
                            default => [],
                        };
                    })
                    ->reactive()
                    ->required()
                    ->placeholder('Pilih Kategori Laporan Anda')
                    ->disabled(fn () => Auth::user()->hasRole(['Admin', 'Pimpinan Institusi', 'Staff'])),

                Textarea::make('deskripsi')
                    ->label('Deskripsi')
                    ->required()
                    ->placeholder('Ketik Isi Laporan Anda dengan jelas dan detail')
                    ->disabled(fn () => Auth::user()->hasRole(['Admin', 'Pimpinan Institusi','Staff'])),

                FileUpload::make('bukti_foto')
                    ->label('Bukti Foto')
                    ->image()
                    ->required()
                    ->directory('bukti_pengaduan')
                    ->helperText('Unggah gambar maks. 5MB dengan format PNG, JPG, atau JPEG sesuai ketentuan.')
                    ->maxSize(2048)
                    ->disabled(fn () => Auth::user()->hasRole(['Admin', 'Pimpinan Institusi','Staff'])),

                Select::make('status')
                    ->label('Status Pengaduan')
                    ->options(function () {
                        $user = Auth::user();

                        if ($user->hasRole('Pimpinan Institusi')) {
                            // Pimpinan Institusi tidak bisa memilih "Terkirim", "Diproses", "Expired"
                            return collect(Status::cases())
                                ->filter(fn($status) =>
                                    $status->value !== Status::Terkirim->value &&
                                    $status->value !== Status::Diproses->value &&
                                    $status->value !== Status::Expired->value
                                )
                                ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                        }

                        if ($user->hasRole('Staff')) {
                            // Staff tidak bisa memilih "Terkirim", "Didisposisi", "Expired"
                            return collect(Status::cases())
                                ->filter(fn($status) =>
                                    $status->value !== Status::Terkirim->value &&
                                    $status->value !== Status::Didisposisi->value &&
                                    $status->value !== Status::Expired->value
                                )
                                ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                        }

                        // Role lain (misalnya Admin) bisa memilih semua status
                        return collect(Status::cases())
                            ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                    })
                    ->reactive()
                    ->default('Terkirim')
                    ->required()
                    ->hidden(fn () => !Auth::user()->hasRole(['Admin', 'Pimpinan Institusi', 'Staff'])),

                // INI STATUS KEDUA
                // Select::make('status')
                //     ->label('Status Pengaduan')
                //     ->options(function () {
                //         $user = Auth::user();

                //         if ($user->hasRole('Pimpinan Institusi')) {
                //             // Pimpinan Institusi tidak bisa memilih "Terkirim"
                //             return collect(Status::cases())
                //                 ->filter(fn($status) => $status->value !== Status::Terkirim->value)
                //                 ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                //         }

                //         if ($user->hasRole('Staff')) {
                //             // Staff tidak bisa memilih "Terkirim" dan "Didisposisi"
                //             return collect(Status::cases())
                //                 ->filter(fn($status) =>
                //                     $status->value !== Status::Terkirim->value &&
                //                     $status->value !== Status::Didisposisi->value
                //                 )
                //                 ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                //         }

                //         // Role lain (misalnya Admin) bisa memilih semua status
                //         return collect(Status::cases())
                //             ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                //     })
                //     ->reactive()
                //     ->default('Terkirim')
                //     ->hidden(fn() => !Auth::user()->hasRole(['Admin', 'Pimpinan Institusi', 'Staff'])),
                

                // INI STATUS AWAL
                // Select::make('status')
                //     ->label('Status Pengaduan')
                //     ->options(fn() => Auth::user()->hasRole('Pimpinan Institusi')
                //         ? collect(Status::cases())->filter(fn($status) => $status->value !== Status::Terkirim->value)
                //             ->mapWithKeys(fn ($status) => [$status->value => $status->name])
                //         : collect(Status::cases())->mapWithKeys(fn ($status) => [$status->value => $status->name]))
                //     ->reactive()
                //     ->default('Terkirim')
                //     ->hidden(fn() => !Auth::user()->hasRole(['Admin', 'Pimpinan Institusi','Staff'])),

                Textarea::make('keterangan_penolakan')
                    ->label('Keterangan Ditolak')
                    ->placeholder('Alasan pengaduan ditolak...')
                    ->required(fn ($get) => $get('status') === Status::Ditolak->value)
                    ->hidden(fn ($get) => $get('status') !== Status::Ditolak->value)
                    ->disabled(fn () => !Auth::user()->hasRole(['Pimpinan Institusi', 'Staff', 'Admin'])),

                FileUpload::make('bukti_selesai')
                    ->label('Upload Bukti Selesai')
                    ->image()
                    ->directory('bukti_selesai')
                    ->maxSize(2048)
                    ->required(fn ($get) => $get('status') === Status::Selesai->value)
                    ->visible(fn ($get) => $get('status') === Status::Selesai->value)
                    ->hidden(fn ($get) => $get('status') !== Status::Selesai->value)
                    ->helperText('Upload gambar sebagai bukti bahwa aduan telah diselesaikan')
                    ->columnSpanFull()
                    ->disabled(fn () => !Auth::user()->hasRole(['Pimpinan Institusi', 'Staff', 'Admin'])),

                
                Select::make('staff_id')
                    ->label('Didisposisikan ke Bagian')
                    ->options(fn ($get) => 
                        $get('pimpinan_id') 
                            ? Staff::where('pimpinan_id', $get('pimpinan_id'))->pluck('nama', 'id')->toArray()
                            : [])
                    ->searchable()
                    ->reactive()
                    ->required(fn ($get) => $get('status') === Status::Didisposisi->value) // Staff wajib dipilih jika didisposisikan
                    ->validationMessages([
                        'required' => 'Harap isi bidang ini jika status Didisposisi!',])
                    ->hidden(fn ($get) => $get('status') !== Status::Didisposisi->value || Auth::user()->hasRole('Staff')),

                
                Select::make('waktu_selesai')
                    ->label('Estimasi pengerjaan')
                    ->options([
                        'ringan' => '2 Hari',
                        'sedang' => '3 Hari',
                        'berat' => '7 Hari',
                    ])
                    ->afterStateUpdated(fn ($set, $state) => $set('waktu_selesai', match ($state) {
                        'ringan' => now()->addSecond(10)->format('Y-m-d H:i:s'),
                        'sedang' => now()->addDays(3)->format('Y-m-d H:i:s'),
                        'berat' => now()->addDays(7)->format('Y-m-d H:i:s'),
                        default => null,
                    }))

                    // Hanya Staff yang bisa mengatur waktu pengerjaan
                    ->required(fn ($get) => 
                    $get('status') === Status::Didisposisi->value && Auth::user()->hasRole('Staff')
                    )
                    ->visible(fn () => Auth::user()->hasRole('Staff'))
                    ->hidden(fn ($get) => $get('status') !== Status::Diproses->value),
                ]),
        ]);
    }


    public static function table(Table $table): Table
    {
        return $table
        ->poll('3s') // Auto-refresh setiap 3 detik
        ->columns([
            TextColumn::make('kode_aduan')
                ->label('Kode Aduan')
                ->copyable()
                ->copyMessage('Code copied successfully')
                ->searchable(),

            TextColumn::make('nama_pelapor')
                ->label('Nama Pelapor')
                ->searchable(),

            TextColumn::make('kategori.nama')
                ->label('Kategori'),

            TextColumn::make('status')
                ->label('Status')
                ->badge()
                ->color(fn (?string $state): string => match ($state) {
                    Status::Terkirim->value => 'info',
                    Status::Ditolak->value => 'danger',
                    Status::Diproses->value => 'warning',
                    Status::Didisposisi->value => 'primary',
                    Status::Expired->value => 'danger',
                    Status::Selesai->value => 'success',
                    default => 'gray',
                })
                ->icon(fn (?string $state) => match ($state) {
                    Status::Terkirim->value => 'heroicon-o-paper-airplane',
                    Status::Ditolak->value => 'heroicon-o-x-circle',
                    Status::Diproses->value => 'heroicon-o-arrow-path',
                    Status::Didisposisi->value => 'heroicon-o-user-group',
                    Status::Expired->value => 'heroicon-o-exclamation-triangle',
                    Status::Selesai->value => 'heroicon-o-check-circle',
                    default => null,
                }),                 

            ImageColumn::make('bukti_foto')
                    ->label('Bukti Foto')
                    ->getStateUsing(fn ($record) => asset('storage/' . $record->bukti_foto))
                    ->extraAttributes(fn ($record) => [
                        'onclick' => "window.open('" . Storage::url($record->bukti_foto) . "', '_blank')"
                    ]),

            ])
                
            ->filters([
                SelectFilter::make('status')
                    ->label('Status Pengaduan')
                    ->options(collect(Status::cases())->mapWithKeys(fn ($status) => [$status->value => $status->name]))
                    ->attribute('status')
                    ->visible(fn() => Auth::user()->hasRole(['Admin', 'Pimpinan Institusi','Staff'])), // Filter hanya bisa diakses oleh Admin & Pimpinan

                                
                    // Filter untuk periode semester (Ganjil & Genap)
                    SelectFilter::make('periode_akademik')
                    ->label('Periode Akademik')
                    ->options(function () {
                        $years = \App\Models\DataPengaduan::query()
                            ->selectRaw('YEAR(created_at) as year')
                            ->distinct()
                            ->orderBy('year', 'desc')
                            ->pluck('year')
                            ->unique()
                            ->sortDesc()
                            ->values();
            
                        $options = [];
            
                        foreach ($years as $year) {
                            // Semester Ganjil: Juli - Desember tahun berjalan
                            $options["ganjil-{$year}"] = "Semester Ganjil {$year}/" . ($year + 1);
            
                            // Semester Genap: Januari - Juni tahun berikutnya
                            $options["genap-{$year}"] = "Semester Genap {$year}/" . ($year + 1);
                        }
            
                        return $options;
                    })
                    ->multiple(false)
                    ->query(function (Builder $query, $state) {
                        if (!$state || !is_string($state)) {
                            return $query;
                        }
            
                        [$semester, $tahun] = explode('-', $state);
            
                        if ($semester === 'ganjil') {
                            $startDate = Carbon::createFromDate($tahun, 7, 1)->startOfDay();
                            $endDate   = Carbon::createFromDate($tahun, 12, 31)->endOfDay();
                        } elseif ($semester === 'genap') {
                            $tahunBerikutnya = $tahun + 1;
                            $startDate = Carbon::createFromDate($tahunBerikutnya, 1, 1)->startOfDay();
                            $endDate   = Carbon::createFromDate($tahunBerikutnya, 6, 30)->endOfDay();
                        } else {
                            return $query;
                        }
            
                        return $query->whereBetween('tanggal_pengaduan', [$startDate, $endDate]);
                    })
                    ->visible(fn() => Auth::user()->hasRole(['Admin', 'Pimpinan Institusi', 'Staff'])),
                
                
                ])
                
                ->actions([
                    Tables\Actions\ViewAction::make()
                        ->visible(fn() => true)
                        ->label('Detail Aduan'),

                    Tables\Actions\Action::make('ubahStatus')
                        ->label('Ubah Status')
                        ->icon('heroicon-o-pencil-square')
                        ->requiresConfirmation()
                        ->visible(fn () => !Auth::user()->hasRole(['Admin', 'User']))
                        ->form([
                            Select::make('status')
                                ->label('Status Pengaduan')
                                ->options(function () {
                                    $user = Auth::user();

                                    if ($user->hasRole('Pimpinan Institusi')) {
                                        return collect(Status::cases())
                                            ->filter(fn($status) =>
                                                $status->value !== Status::Terkirim->value &&
                                                $status->value !== Status::Diproses->value &&
                                                $status->value !== Status::Expired->value
                                            )
                                            ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                                    }

                                    if ($user->hasRole('Staff')) {
                                        return collect(Status::cases())
                                            ->filter(fn($status) =>
                                                $status->value !== Status::Terkirim->value &&
                                                $status->value !== Status::Didisposisi->value &&
                                                $status->value !== Status::Expired->value
                                            )
                                            ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                                    }

                                    return collect(Status::cases())
                                        ->mapWithKeys(fn ($status) => [$status->value => $status->name]);
                                })
                                ->required()
                                ->reactive(),

                            Select::make('estimasi_pengerjaan') // simpan 'ringan', 'sedang', atau 'berat'
                                ->label('Estimasi Pengerjaan')
                                ->options([
                                    'ringan' => '2 Hari',
                                    'sedang' => '3 Hari',
                                    'berat' => '7 Hari',
                                ])
                                ->required(fn ($get) => $get('status') === Status::Diproses->value)
                                ->visible(fn ($get) => $get('status') === Status::Diproses->value)
                                ->hidden(fn ($get) => $get('status') !== Status::Diproses->value)
                                ->visible(fn () => Auth::user()->hasRole('Staff'))
                                ->afterStateUpdated(function ($state, callable $set) {
                                    $waktuSelesai = match ($state) {
                                        'ringan' => now()->addSeconds(2),
                                        'sedang' => now()->addDays(3),
                                        'berat' => now()->addDays(7),
                                        default => null,
                                    };

                                    if ($waktuSelesai) {
                                        $set('waktu_selesai', $waktuSelesai->format('Y-m-d H:i:s'));
                                    }
                                }),

                            TextInput::make('waktu_selesai')
                                ->label('Waktu Selesai')
                                ->readOnly()
                                ->required(fn ($get) => $get('status') === Status::Diproses->value)
                                ->visible(fn ($get) => $get('status') === Status::Diproses->value)
                                ->hidden(fn ($get) => $get('status') !== Status::Diproses->value)
                                ->dehydrated()
                                ->visible(fn () => Auth::user()->hasRole('Staff')),

                            Textarea::make('keterangan_penolakan')
                                ->label('Keterangan Ditolak')
                                ->placeholder('Alasan pengaduan ditolak...')
                                ->required(fn ($get) => $get('status') === Status::Ditolak->value)
                                ->hidden(fn ($get) => $get('status') !== Status::Ditolak->value)
                                ->disabled(fn () => !Auth::user()->hasRole(['Pimpinan Institusi', 'Staff', 'Admin'])),

                            FileUpload::make('bukti_selesai')
                                ->label('Upload Bukti Selesai')
                                ->image()
                                ->directory('bukti_selesai')
                                ->maxSize(2048)
                                ->required(fn ($get) => $get('status') === Status::Selesai->value)
                                ->visible(fn ($get) => $get('status') === Status::Selesai->value)
                                ->hidden(fn ($get) => $get('status') !== Status::Selesai->value)
                                ->helperText('Upload gambar sebagai bukti bahwa aduan telah diselesaikan')
                                ->columnSpanFull()
                                ->disabled(fn () => !Auth::user()->hasRole(['Pimpinan Institusi', 'Staff', 'Admin'])),

                            Select::make('staff_id')
                                ->label('Didisposisikan ke Bagian')
                                ->options(function () {
                                    $user = Auth::user();

                                    $pimpinan = \App\Models\PimpinanInstitusi::where('user_id', $user->id)->first();

                                    if (!$pimpinan) {
                                        return []; // Jika bukan pimpinan, kosongkan
                                    }

                                    return \App\Models\Staff::where('pimpinan_id', $pimpinan->id)
                                        ->pluck('nama', 'id')
                                        ->toArray();
                                })
                                ->searchable()
                                ->reactive()
                                ->required(fn ($get) => $get('status') === Status::Didisposisi->value)
                                ->validationMessages([
                                    'required' => 'Harap isi bidang ini jika status Didisposisi!',
                                ])
                                ->visible(fn ($get) =>
                                    $get('status') === Status::Didisposisi->value && !Auth::user()->hasRole('Staff')
                                ),


                        ])
                        ->action(function (array $data, DataPengaduan $record): void {
                            $record->update([
                                'status' => $data['status'],
                                'keterangan_penolakan' => $data['keterangan_penolakan'] ?? null,
                                'bukti_selesai' => $data['bukti_selesai'] ?? null,
                                'waktu_selesai' => $data['waktu_selesai'] ?? null,
                                'tanggal_selesai' => $data['tanggal_selesai'] ?? null,
                                'staff_id' => $data['staff_id'] ?? $record->staff_id,
                                // 'staff_id' => $data['staff_id'] ?? null,
                            ]);
                        }),
                        
                        // INI KODE EDIT AWAL
                    // Tables\Actions\EditAction::make()
                    //     ->label('Ubah Status')
                    //     ->visible(fn() => Auth::user()->hasRole(['Pimpinan Institusi', 'Staff'])), 

                    Tables\Actions\DeleteAction::make('cancel')
                        ->label('Batalkan Aduan')
                        ->modalHeading('Batalkan Aduan')
                        ->modalSubheading('Apakah kamu yakin ingin membatalkan aduanmu?')
                        ->visible(fn ($record) => 
                            Auth::user()->hasRole('User') && $record->status === 'Terkirim'
                        )
                        ->action(fn ($record, $livewire) => $record->delete()),

                ])
                ->bulkActions([
                    // INI KODE UNTUK SELECT ALL HAPUS
                    // Tables\Actions\BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
                    // ])->visible(fn() => Auth::user()->hasRole(['Admin'])),
                ]);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListDataPengaduans::route('/'),
            'create' => Pages\CreateDataPengaduan::route('/create'),
            'edit' => Pages\EditDataPengaduan::route('/{record}/edit'),
            'view' => Pages\ViewDataPengaduan::route('/{record}'),
        ];
    }


    public static function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                TextEntry::make('kode_aduan')
                    ->color('gray')
                    ->icon('heroicon-o-key'),

                TextEntry::make('nama_pelapor')
                    ->color('gray')
                    ->icon('heroicon-o-user'),

                TextEntry::make('email_pelapor')
                    ->color('gray')
                    ->icon('heroicon-o-envelope'),

                TextEntry::make('pimpinan.nama')
                    ->label('Nama Pimpinan')
                    ->color('gray')
                    ->icon('heroicon-o-briefcase'),

                TextEntry::make('kategori.nama')
                    ->label('Kategori Pengaduan')
                    ->color('gray')
                    ->icon('heroicon-o-tag'),

                TextEntry::make('deskripsi')
                    ->color('gray')
                    ->icon('heroicon-o-chat-bubble-left-right'),

                ImageEntry::make('bukti_foto')
                    ->label('Bukti Foto')
                    ->getStateUsing(fn ($record) => asset('storage/' . $record->bukti_foto))
                    ->url(fn ($record) => asset('storage/' . $record->bukti_foto)) // Link gambar
                    ->openUrlInNewTab(),// Buka di tab baru

                TextEntry::make('created_at')
                    ->label('Tanggal Aduan Dibuat')
                    ->color('gray')
                    ->icon('heroicon-o-calendar')
                    ->dateTime('d M Y H:i'),

                TextEntry::make('status')
                    ->color('gray')
                    ->icon(fn (?string $state) => match ($state) {
                        'Terkirim' => 'heroicon-o-paper-airplane',
                        'Ditolak' => 'heroicon-o-x-circle',
                        'Didisposisi' => 'heroicon-o-user-group',
                        'Selesai' => 'heroicon-o-check-circle',
                        default => 'heroicon-o-question-mark-circle',
                    }),

                ImageEntry::make('bukti_selesai')
                    ->label('Bukti Selesai')
                    ->getStateUsing(fn ($record) => asset('storage/' . $record->bukti_selesai))
                    ->url(fn ($record) => asset('storage/' . $record->bukti_selesai)) // Link gambar
                    ->openUrlInNewTab()
                    ->hidden(fn ($record) => $record->status !== 'Selesai'),// Buka di tab baru

                TextEntry::make('expired_message')
                    ->label('')
                    ->html()
                    ->default(fn($record) => "Aduan dengan kode <strong>{$record->kode_aduan}</strong> telah expired karena tidak ditangani dalam batas waktu yang ditentukan. Aduan ini akan dialihkan ke bagian Satuan Pengawas Internal untuk ditindaklanjuti.")
                    ->color('gray')
                    ->visible(fn ($record) => $record->status === 'Expired')
                    ->icon('heroicon-o-exclamation-triangle'),
                
                TextEntry::make('keterangan_penolakan')
                    ->label('Keterangan Penolakan')
                    ->color('gray')
                    ->icon('heroicon-o-information-circle')
                    ->hidden(fn ($record) => $record->status !== 'Ditolak'), 

                TextEntry::make('staff.nama')
                    ->label('Disposisi ke Bagian')
                    ->color('gray')
                    ->icon('heroicon-o-user-group')
                    ->hidden(fn ($record) => $record->status !== 'Didisposisi'),

                TextEntry::make('waktu_selesai')
                    ->label('Estimasi pengerjaan')
                    ->color('gray')
                    ->icon('heroicon-o-clock')
                    ->hidden(fn ($record) => $record->status !== 'Diproses')
                    ->since()
            ]);
    }

    public static function getEloquentQuery(): Builder
    {
        // Update status menjadi 'expired' jika waktu_selesai terlewati
        DataPengaduan::whereNotIn('status', [Status::Selesai->value, Status::Ditolak->value, 'Expired'])
            ->whereNotNull('waktu_selesai')
            ->where('waktu_selesai', '<', Carbon::now())
            ->update(['status' => 'Expired']);

        $user = Auth::user();
    
        return parent::getEloquentQuery()
            ->when($user->hasRole('Pimpinan Institusi'), function ($query) use ($user) {
                $pimpinan = PimpinanInstitusi::where('user_id', $user->id)->first();
                if ($pimpinan) {
                    $query->where('pimpinan_id', $pimpinan->id)
                            ->whereIn('status', [Status::Terkirim->value, Status::Didisposisi->value, Status::Diproses->value, Status::Selesai->value, Status::Ditolak->value, Status::Expired->value]);
                }
            })
            ->when($user->hasRole('Staff'), function ($query) use ($user) {
                $staff = Staff::where('user_id', $user->id)->first();
                if ($staff) {
                    $query->where('staff_id', $staff->id) // Hanya melihat aduan yang ditujukan ke staff ini
                        ->whereIn('status', [Status::Didisposisi->value, Status::Diproses->value, Status::Selesai->value, Status::Ditolak->value, Status::Expired->value]);
                } else {
                    $query->whereNull('id'); // Jika tidak ada staff terkait, kosongkan query
                }
            })
            ->when($user->hasRole('User'), function ($query) use ($user) {
                $query->where('email_pelapor', $user->email); // User hanya melihat aduan mereka sendiri
            })
            ->when($user->hasRole('Admin'), function ($query) {
                // Admin dapat melihat semua aduan
            })
            ->orderByDesc('updated_at');
    }
    
    // public static function getEloquentQuery(): Builder
    // {
    //     $user = Auth::user();
    
    //     return parent::getEloquentQuery()
    //         ->when($user->hasRole('Pimpinan Institusi'), function ($query) use ($user) {
    //             $pimpinan = PimpinanInstitusi::where('user_id', $user->id)->first();
    //             if ($pimpinan) {
    //                 $query->where('pimpinan_id', $pimpinan->id);
    //             }
    //         })
    //         ->when($user->hasRole('Staff'), function ($query) use ($user) {
    //             $query->where('staff_id', $user->id);
    //         })
    //         ->when(!$user->hasRole(['Admin', 'Pimpinan Institusi', 'Staff']), function ($query) use ($user) {
    //             // Pengguna biasa hanya melihat aduan mereka sendiri
    //             $query->where('email_pelapor', $user->email);
    //         })
    //         ->orderByDesc('updated_at');
    // }
    
    // public static function getEloquentQuery(): Builder
    // {
    //     $user = Auth::user();
    
    //     return parent::getEloquentQuery()
    //         ->when($user->hasRole('Pimpinan Institusi'), function ($query) use ($user) {
    //             $pimpinan = PimpinanInstitusi::where('user_id', $user->id)->first();
    //             if ($pimpinan) {
    //                 $query->where('pimpinan_id', $pimpinan->id);
    //             }
    //         })
    //         ->when(!$user->hasRole(['Admin', 'Pimpinan Institusi']), function ($query) use ($user) {
    //             // Pengguna biasa hanya melihat aduan mereka sendiri
    //             $query->where('email_pelapor', $user->email);
    //         })
    //         ->orderByDesc('updated_at'); // Urutkan berdasarkan yang terbaru diupdate
    // } 
        
    // Pengguna bisa menambah aduan baru hanya setelah aduan sebelumnya berstatus "Selesai"
    // public static function canCreate(): bool
    // {
    //     $user = Auth::user();
    
    //     // Cek apakah user sudah memiliki aduan dengan status "Terkirim"
    //     $existingReport = DataPengaduan::where('email_pelapor', $user->email)
    //         ->where('status', 'Terkirim')
    //         ->exists();
    
    //     // Jika ada aduan dengan status "Terkirim", maka user tidak bisa membuat aduan baru
    //     return !$existingReport;
    // }    

    // public static function getEloquentQuery(): Builder
    // {
    //     $user = Auth::user();
    
    //     return parent::getEloquentQuery()
    //         ->when(!$user->hasRole(['Admin', 'Pimpinan Institusi']), function ($query) use ($user) {
    //             $query->where('email_pelapor', $user->email);
    //         });
    // }  
}

