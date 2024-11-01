<?php

namespace App\Models;

use App\Mail\FeedbackEmail;
use App\Models\DictionaryModel as Model;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Support\Facades\Mail;

/**
 * @SWG\Definition(
 *      definition="Feedback",
 *      required={"name", "email", "topic", "question", "created_at"},
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
 *          property="email",
 *          description="email",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="topic",
 *          description="topic",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="question",
 *          description="question",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="answer",
 *          description="answer",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="created_at",
 *          description="created_at",
 *          type="string",
 *          format="date-time"
 *      ),
 *      @SWG\Property(
 *          property="answered_at",
 *          description="answered_at",
 *          type="string",
 *          format="date-time"
 *      )
 * )
 */
class Feedback extends Model
{

    public $table = 'feedback';

    public $timestamps = false;




    public $fillable = [
        'name',
        'email',
        'topic',
        'question',
        'answer',
        'created_at',
        'answered_at'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'email' => 'string',
        'topic' => 'string',
        'question' => 'string',
        'answer' => 'string',
        'created_at' => 'datetime',
        'answered_at' => 'datetime'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required|string|max:255',
        'email' => 'required|email|max:255',
        'topic' => 'required|string|max:255|min:8',
        'question' => 'required|string',
        'answer' => 'nullable|string',
        'created_at' => 'nullable',
        'answered_at' => 'nullable'
    ];

    public $dataTableFields = [
        'id' => ['title' => '#', 'width' => '10px'],
        'name' => ['title' => 'Имя'],
        'email' => ['title' => 'Email'],
        'topic' => ['title' => 'Тема'],
        'created_at' => ['title' => 'Отправлено'],
        'answered_at' => ['title' => 'Отвечено'],
    ];

    public function save(array $options = [])
    {
        if ($this->answer != $this->getOriginal('answer')) {
            
            Mail::to($this->email)->send(new FeedbackEmail($this));
            
            
        };
        return parent::save($options);
    }

}
