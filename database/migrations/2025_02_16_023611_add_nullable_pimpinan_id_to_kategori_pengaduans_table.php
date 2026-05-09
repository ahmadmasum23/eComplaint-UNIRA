<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::table('kategori_pengaduans', function (Blueprint $table) {
            // Tambahkan kolom sebagai nullable terlebih dahulu
            $table->unsignedBigInteger('pimpinan_id')->nullable()->after('id');
        });

        // Tambahkan foreign key constraint setelah kolom dibuat
        Schema::table('kategori_pengaduans', function (Blueprint $table) {
            $table->foreign('pimpinan_id')->references('id')->on('pimpinan_institusis');
        });
    }

    public function down()
    {
        Schema::table('kategori_pengaduans', function (Blueprint $table) {
            $table->dropForeign(['pimpinan_id']);
            $table->dropColumn('pimpinan_id');
        });
    }
};
