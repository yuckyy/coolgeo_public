<?php

Class arrtable
{
    private $data_array = Array(); //Массив данных, который надо обвесить тегами таблицы

    public $HTMLresult = 'Нет данных для обработки.';

    private $datatype = 0; //0 - все данные  1 - только именованые ключи 2 - только номерные ключи

    private $LangHeaderID = 'table';

    var $columns = array();
    private $columnlist = array();

    private $tablesettings = '';
    //public $foottype = 'none'; // none - нет футера
    // resultvalue - объеденяет все ячейки кроме одной, возвращает 2 метки (название / значение)
    // resultsummary - отображает значение summary из свойств колонки
    private $foottype = 'none';

    //конструктор
    function arrtable($data, $LangHeaderID) //, $center_moduleid, $center_module_options)
    {
        if (!is_array($data))
        {
            $this -> HTMLresult = 'Даные для обработки не являются массивом.';
            return;
        }

        $this -> data_array = $data;
        $this -> LangHeaderID = $LangHeaderID;

        //$this -> generate();
    }


    function set_columns($columnlist)
    {
        if (!is_array($columnlist))
        {
            $columnlist = func_get_args();
        }

        foreach ($columnlist as $key => $value)
        {
            $this -> columns[$value] = array(
                'captionsettings' => '',
                'bodysettings' => '',
                'footsettings' => '',
                'summary' => false,
                'bodyheader' => false,
                'captionheader' => false,
                'footheader' => false,
                'caption' => '{lang_'.$this -> LangHeaderID.'_'.$value.'}',
                'summaryvalue' => ''

            );
        }
        $this -> columnlist = $columnlist;
        //$this -> generate();
    }

    function set_column_property($property)
    {

        // если указане список колонок
        if (count($this -> columns) > 0)
        {
            //Echo 'working <br><br>';
            if (is_array($property) && isset($property['column']))
            {

                $column = $property['column'];
                if (isset($this -> columns[$column]))
                {
                    foreach ($property as $key => $value)
                    {
                        if(isset($this -> columns[$column][$key]))
                        {
                            $this -> columns[$column][$key] = $value;
                        }
                    }
                }
            }
            Else
            {

                $property = func_get_args();
                if (is_array($property))
                {
                    if(count($property) == 3)
                    {
                        $column = $property[0];
                        $option = $property[1];
                        $value = $property[2];

                        //Echo " $column - $property - $propertyvalue ".$property[2].'<br><br>'; die();

                        if (isset($this -> columns[$column]))
                        {
                            if(isset($this -> columns[$column][$option]))
                            {
                                //Echo " $column - $property - $propertyvalue".'<br><br>'; die();
                                $this -> columns[$column][$option] = $value;
                            }
                        }
                    }
                }
            }
        }
        //$this -> generate();

    }

    //0 - все данные  1 - только именованые ключи 2 - только номерные ключи
    function set_datatype($type)
    {
        if (is_numeric($type))
        {
            if ($type == 0 || $type == 1 || $type == 2)
            {
                $this -> datatype = $type;
                //$this -> generate();
            }
        }
    }


    function set_langheaderid($id)
    {
        $this -> LangHeaderID = $type;
        //$this -> generate();

    }

    function set_tablesettings($settings)
    {
        $this -> tablesettings = $settings;
        //$this -> generate();
    }


    // none - нет футера
    // resultvalue - объеденяет все ячейки кроме одной, возвращает 2 метки (название / значение)
    // resultsummary - отображает значение summary из свойств колонки
    function set_foottype($foottype)
    {
        if ($foottype == 'none' || $foottype == 'resultvalue' || $foottype == 'resultsummary')
        {
            $this -> foottype = $foottype;
            //$this -> generate();
        }
    }

    function generate()
    {
        $tablesettings = '';
        $tablesettings = $this -> tablesettings;
        $this -> HTMLresult = "<table $tablesettings >";

        $work_array = $this -> data_array;
        //очистить номарные ключи если нужно
        if ($this -> datatype == 1)
        {
            foreach ($work_array as $row => $data)
            {
                if (is_array($data))
                {
                    foreach ($data as $key => $value)
                    {
                        if (is_numeric($key))
                        {
                            unset($work_array[$row][$key]);
                        }
                    }
                };
            }
        }

        if ($this -> datatype == 2)
        {
            foreach ($work_array as $row => $data)
            {
                if (is_array($data))
                {
                    foreach ($data as $key => $value)
                    {
                        if (!is_numeric($key))
                        {
                            unset($work_array[$row][$key]);
                        }
                    }
                };
            }
        }

        //print_r($this -> columns); die();

        // если указане список колонок
        if (count($this -> columns) > 0)
        {
            // перевернуть список колонок
            foreach ($work_array as $row => $data)
            {
                if (is_array($data))
                {
                    foreach ($data as $key => $value)
                    {
                        if (!isset($this -> columns[$key]))
                        {
                            unset($work_array[$row][$key]);
                        }
                    }
                };
            }
        }



        //формирование <thead>
        $this -> HTMLresult .= '<thead>';
        if (count($this -> columns))
        {
            foreach ($this -> columns as $key => $data)
            {
                if ($this -> columns[$key]['captionheader'] == true)
                {
                    $this -> HTMLresult .= '<th '.$this -> columns[$key]['captionsettings'].'>';
                }
                else
                {
                    $this -> HTMLresult .= '<td '.$this -> columns[$key]['captionsettings'].'>';
                }

                $this -> HTMLresult .= $data['caption'];

                if ($this -> columns[$key]['captionheader'] == true)
                {
                    $this -> HTMLresult .= '</th>';
                }
                else
                {
                    $this -> HTMLresult .= '</td>';
                }
            }
        }
        Else
        {
            foreach ($work_array[1] as $key => $data)
            {
                $this -> HTMLresult .= '<td>';
                $this -> HTMLresult .= $key;
                $this -> HTMLresult .= '</td>';
            }
        }
        $this -> HTMLresult .= '</thead>';

        // формирование <tbody>
        //Запуск построчного цыкла по массиву данных
        $this -> HTMLresult .= '<tbody>';
        foreach ($work_array as $data)
        {

            $this -> HTMLresult .= '<tr>';
            //Если массив data_array одномерный, то для унификации алгоритва преобразуем его значение в массив
            if (!is_array($data))
            {
                $data = array('data' => $data);
            };

            foreach ($data as $key => $value)
            {
                if (isset($this -> columns[$key]))
                {
                    if ($this -> columns[$key]['bodyheader'] == true)
                    {
                        $this -> HTMLresult .= '<th '.$this -> columns[$key]['bodysettings'].'>';
                    }
                    else
                    {
                        $this -> HTMLresult .= '<td '.$this -> columns[$key]['bodysettings'].'>';
                    }

                    /*
                    if (is_array($value)){
                        $res = array_map(function($k, $v) { return "$k - $v"; }, array_keys($value), $value);
                        $this -> HTMLresult .= implode('<br />', $res);

                    } else{
                    */
                    if (!is_array($value)){
                        $this -> HTMLresult .= $value;
                    }else{
                        $this -> HTMLresult .= 'Array(...)';
                    }

                    /*
                    }
                    */

                    if ($this -> columns[$key]['bodyheader'] == true)
                    {
                        $this -> HTMLresult .= '</th>';
                    }
                    else
                    {
                        $this -> HTMLresult .= '</td>';
                    }
                }
                else
                {
                    $this -> HTMLresult .= '<td>';
                    $this -> HTMLresult .= $value;
                    $this -> HTMLresult .= '</td>';
                }

            }
            $this -> HTMLresult .= '</tr>';

        }
        $this -> HTMLresult .= '</tbody>';

        //формирование <tfoot>
        if ($this -> foottype != 'none')
        {
            $this -> HTMLresult .= '<tfoot>';

            if ($this -> foottype == 'resultvalue')
            {
                if (count($this -> columns)>0)
                {
                    $countcolumns = count($this -> columns);
                }
                else
                {
                    $countcolumns = count($work_array[1]);
                }

                $colspan = 0;
                $colspan = $countcolumns - 1;
                $this -> HTMLresult .= '<tr>';

                if (count($this -> columns)>0)
                {
                    $key = $this -> columnlist[0];

                    if ($this -> columns[$key]['footheader'] == true)
                    {
                        $this -> HTMLresult .= '<th colspan="'.$colspan.'" '.$this -> columns[$key]['footsettings'].' >';
                    }
                    else
                    {
                        $this -> HTMLresult .= '<td colspan="'.$colspan.'" '.$this -> columns[$key]['footsettings'].' >';
                    }
                    $this -> HTMLresult .= '{lang_'.$this -> LangHeaderID.'_summuryname}';
                    if ($this -> columns[$key]['footheader'] == true)
                    {
                        $this -> HTMLresult .= '</th>';
                    }
                    else
                    {
                        $this -> HTMLresult .= '</td>';
                    }

                    $key = $this -> columnlist[$colspan];
                    if ($this -> columns[$key]['footheader'] == true)
                    {
                        $this -> HTMLresult .= '<th '.$this -> columns[$key]['footsettings'].'>';
                    }
                    else
                    {
                        $this -> HTMLresult .= '<td '.$this -> columns[$key]['footsettings'].'>';
                    }
                    $this -> HTMLresult .= '{table_'.$this -> LangHeaderID.'_summuryvalue}';
                    if ($this -> columns[$key]['footheader'] == true)
                    {
                        $this -> HTMLresult .= '</th>';
                    }
                    else
                    {
                        $this -> HTMLresult .= '</td>';
                    }


                }
                Else
                {
                    $this -> HTMLresult .= '<td colspan="'.$colspan.'">';
                    $this -> HTMLresult .= '{table_'.$this -> LangHeaderID.'_summuryname}';
                    $this -> HTMLresult .= '</td>';
                    $this -> HTMLresult .= '<td>';
                    $this -> HTMLresult .= '{table_'.$this -> LangHeaderID.'_summuryvalue}';
                    $this -> HTMLresult .= '</td>';

                }
                $this -> HTMLresult .= '</tr>';
            }

            if ($this -> foottype == 'resultsummary')
            {
                if (count($this -> columns)>0)
                {
                    foreach ($this -> columns as $key => $data)
                    {
                        if ($this -> columns[$key]['footheader'] == true)
                        {
                            $this -> HTMLresult .= '<th '.$this -> columns[$key]['footsettings'].'>';
                        }
                        else
                        {
                            $this -> HTMLresult .= '<td '.$this -> columns[$key]['footsettings'].'>';
                        }

                        if ($data['summary'])
                        {
                            $this -> HTMLresult .= $data['summaryvalue'];
                        }


                        if ($this -> columns[$key]['footheader'] == true)
                        {
                            $this -> HTMLresult .= '</th>';
                        }
                        else
                        {
                            $this -> HTMLresult .= '</td>';
                        }
                    }
                }
            }

            $this -> HTMLresult .= '</tfoot>';
        }


        $this -> HTMLresult .= '</table>';

    }


}

?>