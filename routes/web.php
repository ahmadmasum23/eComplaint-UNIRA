<?php

use Illuminate\Support\Facades\Route;

Route::redirect('/admin/roles', '/ecomplaint/roles'); // Redirect dari URL lama ke yang baru
Route::redirect('/admin/permissions', '/ecomplaint/permissions'); // Redirect dari URL lama ke yang baru

Route::get('/', function () {
    return view('welcome');
});
