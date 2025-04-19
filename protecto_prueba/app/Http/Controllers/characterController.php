<?php

namespace App\Http\Controllers;

// use App\Http\Controllers\CharacterController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\Character;

class characterController extends Controller
{
    public function fetchApiData()
{
    $characters = [];

    for ($i = 1; $i <= 5; $i++) {
        $response = Http::get("https://rickandmortyapi.com/api/character?page=$i");
        $characters = array_merge($characters, $response['results']);
    }

    return view('characters.api', compact('characters'));
}

public function store(Request $request)
{
    $characters = json_decode($request->input('characters'), true);

    foreach ($characters as $char) {
        Character::updateOrCreate(
            ['id' => $char['id']],
            [
                'name' => $char['name'],
                'status' => $char['status'],
                'species' => $char['species'],
                'type' => $char['type'],
                'gender' => $char['gender'],
                'origin_name' => $char['origin']['name'],
                'origin_url' => $char['origin']['url'],
                'image' => $char['image'],
            ]
        );
    }

    return redirect()->route('characters.api')->with('success', 'Personajes guardados correctamente.');
}

public function showFromDb()
{
    $characters = Character::all();
    return view('characters.db', compact('characters'));
}

public function update(Request $request, $id)
{
    $character = Character::findOrFail($id);
    $character->update($request->all());

    return redirect()->back()->with('success', 'Personaje actualizado.');
}
}
