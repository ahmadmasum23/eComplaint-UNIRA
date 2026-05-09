<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('data_pengaduans', function (Blueprint $table) {
            $table->enum('status', ['Terkirim', 'Ditolak', 'Diproses', 'Selesai'])->default('Terkirim');
        });
    }

    public function down(): void
    {
        Schema::table('data_pengaduans', function (Blueprint $table) {
            $table->dropColumn('status');
        });
    }
};