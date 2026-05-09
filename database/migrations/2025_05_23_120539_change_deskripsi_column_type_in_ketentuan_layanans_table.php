<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('ketentuan_layanans', function (Blueprint $table) {
            $table->longText('deskripsi')->change(); // Gunakan longText atau text
        });
    }

    public function down(): void
    {
        Schema::table('ketentuan_layanans', function (Blueprint $table) {
            $table->string('deskripsi', 255)->change(); // Kembalikan ke semula jika di-rollback
        });
    }
};
