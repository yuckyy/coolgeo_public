<?php

namespace App\Http\Controllers;

use App\Helpers\ApiBas;
use App\Models\Contacts;
use App\Models\DictionaryModel;
use App\Models\Documents;
use App\Models\Faq;
use App\Models\Feedback;
use App\Models\News;
use App\Models\Notifications;
use App\Models\Tariffs;
use Carbon\Carbon;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;

class MainController extends AppBaseController
{
    function __construct()
    {
        $this->breadcrumbs['Головна'] = '/';

        return parent::__construct();
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {

        $this->breadcrumbs['Головна'] = route('main.tariffs');

        $tariffs = Tariffs::where(function ($query) {
            return $query->where('closed_at', '<=', Carbon::now())
                ->orWhereNull('closed_at');
        })->get();
        $faq = Faq::orderBy('position')->get();
        $notifications = Notifications::
        where(function ($query) {
            return $query->where('closed_at', '>=', Carbon::now())
                ->orWhereNull('closed_at');
        })->

        where(function ($query) {
            return $query->where('published_at', '<=', Carbon::now())
                ->orWhereNull('published_at');
        })->
        get();

        $contacts = Contacts::get();
        $news = News::whereNotNull('published_at')->where('published_at', '<=', Carbon::now())->orderByDesc('published_at')->get();

        $documents = Documents::where(function ($query) {
            return $query->where('published_at', '<=', Carbon::now())
                ->orWhereNull('published_at');
        })->get();
        // $vievs = view('header').view('attention').view('tariffs').view('documentss').view('reference').view('callback');
        // return $vievs;
        return view('allvievs',compact(['contacts','notifications','news','tariffs','documents','faq']));
    }


    public function tariffs()
    {
	    $this->setTitle("ТАРИФИ");
        $this->breadcrumbs['Головна'] = route('main.tariffs');

        $tariffs = Tariffs::where(function ($query) {
            return $query->where('closed_at', '<=', Carbon::now())
                ->orWhereNull('closed_at');
        })->get();
        return view('tariffs', compact(['tariffs']));
    }

    public function documents()
    {
	    $this->setTitle("Нормативно-правова база");
        $documents = Documents::where(function ($query) {
            return $query->where('published_at', '<=', Carbon::now())
                ->orWhereNull('published_at');
        })->get();
        return view('documents', compact(['documents']));
    }

    public function news()
    {

        $news = News::whereNotNull('published_at')
            ->where('published_at', '<=', Carbon::now())
            ->orderByDesc('published_at')
            ->paginate(10);
        return view('news',compact(['news']));
    }

    public function allnews()
    {
	    $this->setTitle("Всі новини");
        $this->breadcrumbs['Новини'] = route('main.allnews');

        $news = News::whereNotNull('published_at')
            ->where('published_at', '<=', Carbon::now())
            ->orderByDesc('published_at')
            ->paginate(10);

            return view('allnews',compact(['news']));

    }

    public function newsDetail($id)
    {
	    $this->setTitle("Новини");
        $this->breadcrumbs['Новини'] = route('main.allnews');
        $news = News::whereNotNull('published_at')->where('published_at', '<=', Carbon::now())->where('id',$id)->first();
        //print_r($news);
        $this->addBreadcrumbs($news->name, '');
        return view('news-detail',compact(['news']));
    }

    /**
     * Set Form Edit User
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse|string
     * @throws \App\Exceptions\ApiException
     * @throws \Illuminate\Auth\Access\AuthorizationException
     */
    public function setFeedback(\Illuminate\Http\Request $request)
    {
        $model = new Feedback();
        $input = $request->all();
        foreach ($input as $field=>$value){
            if (!$value) unset($input[$field]);
        }
        $rules = $model::$rules;
        $validator = Validator::make($input, $rules);
        $errors = $validator->errors();
        $message = '';
        if ($validator->fails()) {
            if (is_object($errors) || is_array($errors)){
                $errorsArray =  json_decode(json_encode($errors), true);
                foreach ($errorsArray as $key=>$value){
                    $message .= $value[0] . "\n";
                }
            } else {
                $message .= $errors;
            }
            return $message;
        }
        /** @var DictionaryModel $dictionary */
        $model::create($input);
        \Mail::send('emails.admin-feedback',$input, function($m){
            $m->to($this->constants['feedback-email'])->subject('Відгук від користувача');
        });
        return 'OK';
    }
}
