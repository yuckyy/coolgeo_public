<?php

namespace App\Models;

use App\Models\DictionaryModel as Model;

/**
 * @SWG\Definition(
 *      definition="Tariffs",
 *      required={"address", "floats", "created_at"},
 *      @SWG\Property(
 *          property="id",
 *          description="id",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="address",
 *          description="address",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="floats",
 *          description="floats",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="calories",
 *          description="calories",
 *          type="number",
 *          format="number"
 *      ),
 *      @SWG\Property(
 *          property="money",
 *          description="money",
 *          type="number",
 *          format="number"
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
 *      ),
 *      @SWG\Property(
 *          property="closed_at",
 *          description="closed_at",
 *          type="string",
 *          format="date-time"
 *      )
 * )
 */
class Tariffs extends Model
{

    public $table = 'tariffs';
    
    public $timestamps = false;




    public $fillable = [
        'address',
        'floats',
        'calories',
        'money',
        'service',
        'reward',
        'settlement',

        'floats2',
        'calories2',
        'money2',
        'service2',
        'reward2',
        'settlement2',
        
        'created_at',
        'published_at',
        'closed_at'
        
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'address' => 'string',
        'floats' => 'string',
        'calories' => 'string',
        'money' => 'string',
        'service' => 'string',
        'reward' => 'string',
        'settlement' => 'string',

        'floats2' => 'string',
        'calories2' => 'string',
        'money2' => 'string',
        'service2' => 'string',
        'reward2' => 'string',
        'settlement2' => 'string',

        'created_at' => 'datetime',
        'published_at' => 'datetime',
        'closed_at' => 'datetime'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'address' => 'required|string|max:255',
        'floats' => 'required|string|max:255',
        'calories' => 'nullable|string|max:255',
        'money' => 'nullable|string|max:255',
        'service' => 'nullable|string|max:255',
        'reward' => 'required|string|max:255',
        'settlement' => 'required|string|max:255',

        'floats2' => 'nullable|string|max:255',
        'calories2' => 'nullable|string',
        'money2' => 'nullable|string',
        'service2' => 'nullable|string|max:255',
        'reward2' => 'nullable|string|max:255',
        'settlement2' => 'nullable|string|max:255',

        'created_at' => 'nullable',
        'published_at' => 'nullable',
        'closed_at' => 'nullable'
    ];
	public $dataTableFields = [
		'id' => ['title' => '#', 'width' => '10px'],
		'address' => ['title' => 'Адресс'],
		'calories' => ['title' => 'Управління будинком, грн/м²', 'width' => '100px'],
		'money' => ['title' => 'Комунальна електроенергія, грн/м²', 'width' => '100px'],
		'service' => ['title' => 'Обслуговування ліфтів'],
        'reward' => ['title' => 'Винагорода управителю'],
        'settlement' => ['title' => 'Середній розрахунковий'],
        
        

        'published_at' => ['title' => 'Публикация с', 'width' => '180px'],
		'closed_at' => ['title' => 'Публикация до', 'width' => '180px'],
	];
    
}
