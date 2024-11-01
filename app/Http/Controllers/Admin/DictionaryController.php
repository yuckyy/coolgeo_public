<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\Helper;
use App\Models\DictionaryModel;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\RedirectResponse;
use Illuminate\Routing\Redirector;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Validator;
use Illuminate\View\View;
use Laracasts\Flash\Flash;


class DictionaryController extends AppAdminController
{
	public $modelClass;
	public $modelClassName;
	public $title;
	public $actionModels;

	function __construct()
	{
		parent::__construct();
        $parameterName = Route::current()->getName();
        $parameterName = strstr($parameterName, '.', true);

        //var_dump(Route::current()->getName());
        //var_dump(Request::path());
        //echo $parameterName; die();
		$this->actionModels = $this->menu->actions();
		if (isset($this->actionModels[$parameterName]) && $this->actionModels[$parameterName]){
		    $this->modelClassName = $this->actionModels[$parameterName]['class'];
			$this->modelClass = new \ReflectionClass('\\App\\Models\\'.$this->modelClassName);
			$this->title = $this->actionModels[$parameterName]['title'];
		} else {
            abort(404);
        }
	}

	function getModelClass(){
        return $this->modelClass->newInstanceWithoutConstructor();
	}

    /**
     * Display a listing of the Dictionary.
     *
     * @param Request $request
     * @return Factory|View
     * @throws \ReflectionException
     */
    public function index(Request $request)
    {
        //echo $this->modelClass; die();
        $model = $this->getModelClass();
        try {
            $modelClass = new \ReflectionClass('\\App\\DataTables\\'.$this->modelClassName . 'DataTable');
        } catch (\Exception $e){
            $modelClass = new \ReflectionClass('\\App\\DataTables\\DictionaryDataTable');
        }
        //print_r($modelClass); die();
	    $dictionaryDataTable = $modelClass->newInstance($model);
//	    /** @var DictionaryModel $dictionary */
//	    $dictionaries = $model::all();
	    return $dictionaryDataTable->render('admin.dictionaries.index', [
		    'title' => $this->title,
	    ]);
    }

    /**
     * Show the form for creating a new Dictionary.
     *
     * @return Factory|View
     */
    public function create()
    {
        $model = $this->getModelClass();
        return view('admin.dictionaries.create')->with(['title' => $this->title]);
    }

    /**
     * Store a newly created Dictionary in storage.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
	    $model = $this->getModelClass();
	    $input = $request->all();
	    foreach ($input as $field=>$value){
		    if (!$value) unset($input[$field]);
	    }
	    $rules = $model::$rules;
	    $validator = Validator::make($input, $rules);
	    if ($validator->fails()) {
		    return $this->sendError($validator->errors(), 403);
	    }
        /** @var DictionaryModel $dictionary */
        $model::create($input);
        Flash::success('Успешно добавлено!');
        return $this->sendSuccess('Запись добавлена!');
    }

    /**
     * Show the form for editing the specified Dictionary.
     *
     * @param int $id
     *
     * @return Factory|RedirectResponse|Redirector|View
     */
    public function edit($id)
    {
	    $model = $this->getModelClass();
        /** @var DictionaryModel $dictionary */
        $dictionary = $model::find($id);
        if (empty($dictionary)) {
            $this->sendError('Запись не найдена');
        }
        return view('admin.dictionaries.edit')->with('dictionary', $dictionary);
    }

    /**
     * Update the specified Dictionary in storage.
     *
     * @param int $id
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update($id, Request $request)
    {
	    $model = $this->getModelClass();
	    /** @var DictionaryModel $dictionary */
        $dictionary = $model::find($id);
        if (empty($dictionary)) {
            $this->sendError('Запись не найдена');
        }
        $request->validate($model::$rules);
//        $validator = Validator::make($request->all(), $model::$rules);
//        if ($validator->fails()) {
//            return $this->sendError($validator->errors(), 403);
//        }
	    $dictionary->fill($request->all());
        $dictionary->save();
        Flash::success('Успешно изменено!');
        
        return $this->sendSuccess('Запись отредактирована');
           
    }

    /**
     * Remove the specified Dictionary from storage.
     *
     * @param int $id
     *
     * @return RedirectResponse|Redirector
     * @throws \Exception
     *
     */
    public function destroy($id)
    {
	    $model = $this->getModelClass();
	    /** @var DictionaryModel $dictionary */
        $dictionary = $model::find($id);
        if (empty($dictionary)) {
	        Flash::error('Запись не найдена');
            return redirect(route(Helper::route('index')));
        }
        $dictionary->delete();
	    Flash::success('Успешно удалено!');
        return redirect(route(Helper::route('index')));
    }
}
