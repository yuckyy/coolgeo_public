<?php

namespace App\Models;

use Eloquent as Model;

class DictionaryModel extends BaseModel
{
    public $timestamps = false;

    public $fillable = [
        'name',
        // 'number'
    ];

    public $dataTableFields = [
        'id' => ['title' => '#', 'width' => '10px'],
        'name' => ['title' => 'Название'],
        // 'number' => ['title' => 'Номер'],
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        // 'number' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required|string|max:50',
        // 'number' => 'required|string|max:50'
    ];
}
