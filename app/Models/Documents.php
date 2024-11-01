<?php

namespace App\Models;

use App\Models\DictionaryModel as Model;

/**
 * @SWG\Definition(
 *      definition="Documents",
 *      required={"name", "created_at"},
 *      @SWG\Property(
 *          property="id",
 *          description="id",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="name",
 *          description="name",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="url",
 *          description="url",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="file",
 *          description="file",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="created_at",
 *          description="created_at",
 *          type="string",
 *          format="date-time"
 *      ),
 *      @SWG\Property(
 *          property="published_at",
 *          description="published_at",
 *          type="string",
 *          format="date-time"
 *      )
 * )
 */
class Documents extends Model
{

    public $table = 'documents';

    public $timestamps = false;


    public $fileFields = [
        'file' => '/documents/',
    ];

    public $fillable = [
        'number',
        'name',
        'url',
        'file',
        'created_at',
        'published_at'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'number' => 'string',
        'name' => 'string',
        'url' => 'string',
        'file' => 'file|mimes:doc,xls,pdf,jpg|max:5048',
        'created_at' => 'datetime',
        'published_at' => 'datetime'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'number' => 'required|string|max:255',
        'name' => 'required|string|max:255',
        'url' => 'nullable|string|max:255',
        'file' => 'nullable|file|mimes:doc,xls,pdf,jpg|max:5048',
        'created_at' => 'nullable',
        'published_at' => 'nullable'
    ];


}
