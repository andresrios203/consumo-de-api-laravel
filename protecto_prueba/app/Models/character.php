<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class character extends Model
{
    protected $fillable = [
        'id',
        'name',
        'status',
        'species',
        'type',
        'gender',
        'origin_name',
        'origin_url',
        'image',
    ];
}
