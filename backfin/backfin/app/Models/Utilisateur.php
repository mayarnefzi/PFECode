<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Utilisateur extends Model
{
    protected $fillable = [
        'nom', 'prenom', 'email', 'password', 'profil', 'ImageUserPath'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];
}


