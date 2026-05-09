<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pimpinan_kategori', function (Blueprint $table) {
            $table->id();
            $table->foreignId('pimpinan_id')->constrained('pimpinan_institusis')->cascadeOnDelete();
            $table->foreignId('kategori_id')->constrained('kategori_pengaduans')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pimpinan_kategori');
    }
};
