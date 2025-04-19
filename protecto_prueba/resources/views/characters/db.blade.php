@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Personajes guardados en la base de datos</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th><th>Nombre</th><th>Status</th><th>Especie</th><th>Imagen</th><th>Editar</th>
            </tr>
        </thead>
        <tbody>
            @foreach($characters as $char)
                <tr>
                    <td>{{ $char->id }}</td>
                    <td>{{ $char->name }}</td>
                    <td>{{ $char->status }}</td>
                    <td>{{ $char->species }}</td>
                    <td><img src="{{ $char->image }}" width="50" class="rounded"></td>
                    <td>
                        <button type="button" class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#editModal{{ $char->id }}">
                            Editar
                        </button>
                    </td>
                </tr>

                <div class="modal fade" id="editModal{{ $char->id }}" tabindex="-1" aria-labelledby="editModalLabel{{ $char->id }}" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <form method="POST" action="{{ route('characters.update', $char->id) }}">
                                @csrf
                                @method('PUT')
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editModalLabel{{ $char->id }}">Editar: {{ $char->name }}</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="mb-2">
                                        <label>Nombre</label>
                                        <input type="text" name="name" class="form-control" value="{{ $char->name }}">
                                    </div>
                                    <div class="mb-2">
                                        <label>Status</label>
                                        <input type="text" name="status" class="form-control" value="{{ $char->status }}">
                                    </div>
                                    <div class="mb-2">
                                        <label>Especie</label>
                                        <input type="text" name="species" class="form-control" value="{{ $char->species }}">
                                    </div>
                                    <div class="mb-2">
                                        <label>Tipo</label>
                                        <input type="text" name="type" class="form-control" value="{{ $char->type }}">
                                    </div>
                                    <div class="mb-2">
                                        <label>Género</label>
                                        <input type="text" name="gender" class="form-control" value="{{ $char->gender }}">
                                    </div>
                                    <div class="mb-2">
                                        <label>Origen</label>
                                        <input type="text" name="origin_name" class="form-control" value="{{ $char->origin_name }}">
                                    </div>
                                    <div class="mb-2">
                                        <label>URL de Origen</label>
                                        <input type="text" name="origin_url" class="form-control" value="{{ $char->origin_url }}">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-success">Guardar cambios</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            @endforeach
        </tbody>
    </table>
</div>
@endsection