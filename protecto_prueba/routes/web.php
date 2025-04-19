<?php

use App\Http\Controllers\CharacterController;

Route::get('/', function () {
    return redirect()->route('characters.api');
});
Route::get('/characters/api', [CharacterController::class, 'fetchApiData'])->name('characters.api');
Route::post('/characters/store', [CharacterController::class, 'store'])->name('characters.store');
Route::get('/characters/db', [CharacterController::class, 'showFromDb'])->name('characters.db');
Route::put('/characters/{id}', [CharacterController::class, 'update'])->name('characters.update');
