@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Personajes desde la API</h2>
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    <form method="POST" action="{{ route('characters.store') }}">
    @csrf
        <input type="hidden" name="characters" value="{{ json_encode($characters) }}">
        <button class="btn btn-primary mb-3">Guardar en Base de Datos</button>
    </form>
    <table class="table table-bordered">
        <thead><tr>
            <th>ID</th><th>Nombre</th><th>Status</th><th>Especie</th><th>Imagen</th><th>Detalle</th>
        </tr></thead>
        <tbody>
            @foreach($characters as $char)
                <tr>
                    <td>{{ $char['id'] }}</td>
                    <td>{{ $char['name'] }}</td>
                    <td>{{ $char['status'] }}</td>
                    <td>{{ $char['species'] }}</td>
                    <td><img src="{{ $char['image'] }}" width="50"></td>
                    <td>
                        <button class="btn btn-info" onclick='alert("Tipo: {{ $char['type'] ?: "N/A" }}\nGénero: {{ $char['gender'] }}\nOrigen: {{ $char['origin']['name'] }}")'>Ver Detalle</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection