<?php

/**
 * @author SharedNoob
 * @copyright 2011
 */
 
 Class module
    {
        var $site; //ссылка на родительский класс site
        /*
            mode; //вид работы сайта (ajax, content)
            base_options = array(); //базовые настройки сайта
            module_id = ''; //текущий модуль
            module_options = array(); //параметры модуля с именами
            sitedata = array(); //настройки сайта из базы данных
            modules_list = array(); //массив контента модулей
            modules_scripts = array(); //массив скриптов модулей
        */
        
        var $translations = Array(); //словарь переводов на текущий язык
        var $templete; //шаблон модуля
        var $templete_path; //шаблон модуля
        var $css; //шаблон модуля
        var $images; //шаблон модуля
        var $modulemeta; //
        
        var $show_only_this_module = 0;

        
        var $title = Array(); //данные заголовка модуля (название доступы и т п)
        /*
            `kodmodule`
            `foldername`
            `modulename`
            `authconf`
            `accessconf`
            `moduletype`
            `modulemeta`
            `defaultaction`
            `use_templete`
            `use_scripts`
            `use_actions`
            `parameters`
            `use_execute_file`
            `execute_file`
        */
        var $title_action = Array(); //данные заголовка события
        /*
            `kodmodule`
            `action`
            `authconf`
            `accessconf`
            `use_templete`
            `use_scripts`
            `parameters`
            `use_execute_file`
            `execute_file`
        */
        
        //центральный ли модуль
        var $center_module = 0;
        
        //данные текущего модуля
        var $kodmodule = ''; //имя
        var $action = ''; //имя  
        var $module_options = array();
        
        //массивы днных модуля
        var $data = Array(); //даныне заполняемые исполняемым файлом
        
        //Ошибки
        var $module_access = 0; //наличие доступа к модулю
        var $module_action_access = 0; //наличие доступа к событию модуля
        var $module_exists_execute_file = 0; //существование исполняемого файла модуля
        var $module_exists_action_execute_file = 0; //существование исполняемого файла события модуля
        var $module_exists_templete = 0; //существование шаблона
        var $module_exists_lang_file = 0; //существование файла переводов
        
        //выводимые данные
        var $scripts = ''; //линки на скрипты модуля
        var $content; //финальный вид модуля (данные + шаблон)
        
        
        
        
        //конструктор
        function module($site, $title) //, $center_moduleid, $center_module_options)
            {


                //массив данных модуля из бд
                $this -> title = $title;
                $this -> site = $site;
                
                //если имя центрального модуля совпадает с текущим то это центральный модуль
                if ($title['modulename'] == $this -> site -> module_id )
                    {
                        $this -> center_module = 1;
                        $this -> modulemeta = 'content';
                    }
                  else
                    {
                        $this -> modulemeta = $this -> title ['modulemeta'];
                    }



                //проверка наличия доступа к модулю
                $this -> check_module_access();
                //проверка доступа к событию модуля
                $this -> check_action_access();




                 If ($this -> module_access == 0 && $this -> module_action_access == 0)
                    {
                        
                        //чтение шаблона
                        $this -> load_module_templete();

                        //заполненеие параметров модуля
                        if ($this -> center_module == 1)
                        {
                            $this -> get_module_option();
                        }

                        //запуск исполняемого файла модуля
                        $this -> run_module_execute_file();
                        

                        //запуск исполняемого файла события модуля
                        $this -> run_module_action_execute_file();
                        
                        //создание списка скриптов
                        $this -> create_script_list();
                        
                        
                        
                        //чтение файла переводов
                        $this -> load_translations();
                        
                        //генерация контенета
                        $this -> generate_content();
                    }
                   Else
                    {
                        $this -> content = '';
                        $this -> modulemeta = 'content_accesserror';
                    };           
            }
        
        //создание ассоциативного массива опций центрального модуля
        function get_module_option()
            {



                //массив названий параметров центрального модуля
                //если работает модуль то состав параметров модуля, ели событаи то состав параметров события
                if ($this -> title['use_actions'] == 0)
                    {
                        $params=explode(';', $this -> title['parameters']);        
                    }
                  Else
                    {
                        $params=explode(';', $this -> title_action['parameters']);
                    }
	            



                
                $keynpp=0;
	            //цикл по опциям центрального модуля
                foreach ($params as $keyvalues)
	                {


                        //если есть значение для этого параметра
	                    if (isset($this -> site -> module_options[$keynpp]))
                            {
                                //заполняем значение
                                $this -> module_options[trim($keyvalues)]=trim(urldecode($this -> site -> module_options[$keynpp]));
                            }
                          //иначе
                          Else
                            {
                                //если это первый параметр
                                if ($keynpp == 0)
                                    {
                                        //то он везде название модуля
                                        $this -> module_options[trim($keyvalues)] = $this -> title['modulename'];
                                    }
                                  else
                                    {
                                        //иначе заполняем пустышкой 
                                        $this -> module_options[trim($keyvalues)] = '';
                                    }
                                
                            }
                        //счетчик
	                    $keynpp++;        
	                };
                 //echo $this -> action;
                 //$this -> action = $this -> module_options['action'];


            }
        
        //запуск исполняемых модулей
        function check_module_access()
            {
                //читаем состояние авторизации
                $log_status = $this -> site -> login_status;
                //если к модулю доступа нет то заполняем ошибку
                if (
                        ($this -> title['authconf'] != 0 && $log_status == 0)
                        ||
                        ($this -> title['accessconf'] != 0 && $this -> title['access'] == null)
                    )
                    {
                        $this -> module_access = 1;
                    }
                  else
                    {
                        $this -> module_access = 0;
                    }
                  //Echo $this -> title['modulename'] .' - access -'. $this -> module_access.'<br>';                  
            }
        
        
        function run_module_execute_file()
            {
                //Если использовать исполняемый файл модуля
                if ($this -> title['use_execute_file'] == 1 )
                    {
                        //имя файла
                        $execute_file = $this -> title['execute_file'];
                        //путь к файлу
                        $execute_file_path = 'modules/'.$this -> title['foldername'].'/'.$execute_file;
                        //если файл существует
                        if (file_exists($execute_file_path))
                            {
                                //выполнить файл
                                include $execute_file_path;

                                //ошибки существования файла нет
                                $this -> module_exists_execute_file = 0;
                            }
                          else
                            {
                                //ошибка существования файла
                                $this -> module_exists_execute_file = 1;
                            }
                    }
                  Else 
                    {
                        $this -> module_exists_execute_file = 0;
                    }
            }

        //проверка доступа к событию
        function check_action_access()
            {
                //если используются шаги
                if ($this -> title['use_actions'] == 1) 
                    {
                        
                        if (isset($this -> site -> module_options[1]))
                            {
                                $this -> action = $this -> site -> module_options[1];        
                            }                        
                          else 
                            {
                                $this -> action = '';
                            };
                            
                        //если событие не задано, но есть событие по умолчанию, то подставляем его значение
                        if (trim($this -> action) == '' && trim($this -> title['defaultaction']) != '' ) 
                            {
                                $this -> action = $this -> title['defaultaction'];
                            }
                        
                        //echo '1) '.$this -> action;
                        
                        //читаем текущее событие
                        $action = $this -> action;
                        $this -> site -> module_action = $action;
                        $kodmodule = $this -> title ['kodmodule'];
                        $accountid = $this -> site -> accountid;

                        //Echo '"'.$action.'"'; die();
                        $action_querry = "
                                            select m.kodmodule, m.action, max(m.authconf) as authconf, max(m.accessconf) as accessconf, max(m.use_templete) as use_templete, 
                                                    max(m.use_scripts) as use_scripts, max(m.parameters) as  parameters, max(m.use_execute_file) as use_execute_file, 
                                                    max(m.execute_file) as execute_file, max(ma.access) as access                                
                                            from #database.module_actions as m
                                                left join #database.spr_user su on su.accountid='$accountid'
                                                left join #database.spr_grouproles gr on su.kodgroup=gr.kodgroup
                                                left join #database.spr_module_action_access ma on m.kodmodule=ma.kodmodule and m.action=ma.action and ma.kodrole=gr.kodrole
                                            where 
                                                m.kodmodule=$kodmodule and m.action='$action'
                                            group by m.kodmodule, m.action;
                                        ";
                        $action_dataquerry = new mysql_querry($action_querry);
                        
                        //print_r($action_dataquerry -> result) ; die();
                        
                        if (!isset($action_dataquerry -> result[1]))
                            {
                                header("Location: /page_404_error");
                                die();
                            }
                        $this -> title_action = $action_dataquerry -> result[1];
                        
                        //print_r($this -> title_action); exit();
                        
                        //если к событию доступа нет то заполняем ошибку
                        if (
                                ($this -> title_action['authconf'] == 1 && $this -> site -> login_status == 0)
                                ||
                                ($this -> title_action['accessconf'] == 1 && $this -> title_action['access'] == null)
                            )
                            {
                                $this -> module_action_access = 1;
                            }
                          else
                            {
                                $this -> module_action_access = 0;
                            } 
                        
                        //if ($kodmodule == 'adminpanel') { Echo $this -> module_action_access; die();};
                        //Echo $this -> title_action['action'] .' - access -'. $this -> module_action_access.'<br>';
                    }
            }        
        
        //запуск исполняемого файла события
        function run_module_action_execute_file()
            {
                //if ($this -> title['modulename'] == 'adminpanel') {echo $this -> action;  die(); };

                //echo $this -> title['modulename'].'<br>';
                
                //die();

                 //Если использовать исполняемый файл события модуля
                if ($this -> action != '')
                    {
                        //имя файла
                        $execute_file = $this -> title_action['execute_file'];
                        
                        //if ($this -> title['modulename'] == 'adminpanel') {print_r($this -> title_action); };
                        
                        //путь к файлу
                        $execute_file_path = 'modules/'.$this -> title['foldername'].'/actions/'.$this -> action.'/'.$execute_file;
                        
                        //echo $execute_file_path; die();
                        //if ($this -> title['modulename'] == 'adminpanel') {Echo $execute_file_path; die(); };
                        
                        //если файл существует
                        if (file_exists($execute_file_path))
                            {
                                //йцуйцу
                                //if ($this -> title['modulename'] == 'adminpanel') {Echo 'asd'; die(); };
                                
                                //выполнить файл
                                include $execute_file_path;

                                //ошибки существования файла нет
                                $this -> module_exists_action_execute_file = 0;
                            }
                          else
                            {
                                //ошибка существования файла
                                $this -> module_exists_action_execute_file = 1;
                                
                            }
                    }
                  Else 
                    {
                        $this -> module_exists_action_execute_file = 0;
                    }
            }
        
        //загрузка списка скриптов модуля(события)
        function create_script_list()
            {
                 //скрипты
                 $scripts='';

                 //скрипты модуля
                 if ($this -> title['use_scripts'] == 1 )
                    {
                        
                        $module_script_list = glob('modules/'.$this -> title['foldername'].'/scripts/*.js');
                        if (isset($module_script_list[0]))
                            {
                                foreach ($module_script_list as $keyvalues)
                                    {
                                        $scripts.='<script src="'.'http://'.$_SERVER['HTTP_HOST'].$_SESSION['siteroot'].$keyvalues.'" type="text/javascript"></script>';
                                    };                
                            };
                    }

                    
                 //скрипты события
                 if (isset($this -> title_action['use_scripts']) )
                    {
                        if ($this -> title_action['use_scripts'] == 1 )
                            {
                                $module_script_list = glob('modules/'.$this -> title['foldername'].'/actions/'.$this -> title_action['action'].'/scripts/*.js');
                                if (isset($module_script_list[0]))
                                    {
                                        foreach ($module_script_list as $keyvalues)
                                            {
                                                $scripts.='<script src="'.'http://'.$_SERVER['HTTP_HOST'].$_SESSION['siteroot'].$keyvalues.'" type="text/javascript"></script>';
                                            };                
                                    };
                            }
                    }
                
                $this -> scripts = $scripts;
            }
        
        //загрузка шаблона
        function load_module_templete()
            {
                $module_templete = '';
                $module_images = '';
                $module_css = '';
                $module_templete_error = 0;
                
                $action_templete = '';
                $action_images = '';
                $action_css = '';
                $action_templete_error = 0;
                
                if ($this -> title['use_templete'] == 1)
                    {
                        $moduletempletepath=$this -> site -> base_options['sitetempletepath']['value'].'/modules/'.$this -> title['foldername'];
                        $this -> templete_path = $moduletempletepath;
                        if (file_exists($moduletempletepath.'/templete.htm'))
                            {
                                $module_templete = file_get_contents($moduletempletepath.'/templete.htm');
                                $module_images = 'http://'.$_SERVER['HTTP_HOST'].$_SESSION['siteroot'].$moduletempletepath.'/{images}';
                                $module_css = 'http://'.$_SERVER['HTTP_HOST'].$_SESSION['siteroot'].$moduletempletepath.'/{css}';
                            }
                           Else 
                            {
                                $module_templete_error = 1;
                            }
                    }
                
                if (isset($this -> title_action['use_templete']) )
                    {
                        if ($this -> title_action['use_templete'] == 1 )
                            {
                                $actiontempletepath=$this -> site -> base_options['sitetempletepath']['value'].'/modules/'.$this -> title['foldername'].'/actions/'.$this -> title_action['action'];
                                $this -> templete_path = $actiontempletepath;
                                if (file_exists($actiontempletepath.'/templete.htm'))
                                    {
                                        $action_templete = file_get_contents($actiontempletepath.'/templete.htm');
                                        $action_images = 'http://'.$_SERVER['HTTP_HOST'].$_SESSION['siteroot'].$actiontempletepath.'/{images}';
                                        $action_css = 'http://'.$_SERVER['HTTP_HOST'].$_SESSION['siteroot'].$actiontempletepath.'/{css}';
                                    }
                                   Else 
                                    {
                                        $action_templete_error = 1;
                                    }
                            }
                    }
                
                //если не используются события и не используется шаблон то шаблон модуля пустой
                if ($this -> title['use_actions'] == 0 && $this -> title['use_templete'] == 0)
                    {
                        $this -> templete = '';
                    }
                
                //если не используются события, но используется шалон модуля то загрузить шаблон модуля
                if ($this -> title['use_actions'] == 0 && $this -> title['use_templete'] == 1)
                    {
                        if ($module_templete_error == 0)
                            {
                                $this -> templete = $module_templete;
                                $this -> css = $module_css;
                                $this -> images = $module_images;
                            }
                          Else
                            {
                                $this -> templete = 'Module templete error.';
                                $module_exists_templete = 1;
                            }
                    }
                
                //если используются события, то загрузить шаблон события
                if ($this -> title['use_actions'] == 1)
                    {
                        if ($action_templete_error == 0)
                            {
                                $this -> templete = $action_templete;
                                $this -> css = $action_css;
                                $this -> images = $action_images;                                
                            }
                          Else
                            {
                                $this -> templete = 'Module action templete error.';
                                $module_exists_templete = 1;
                            }
                    }
            }
        
        //загрусза словарей перевода
        function load_translations()
            {
                /*
                $module_langfile = '';
                $module_action_langfile = '';
                
                //переводы модуля
                $module_langfile = 'modules/'.$this -> title['foldername'].'/lang/'.$this -> site -> lang.'.php';
                //переводы события
                if (isset($this -> title_action['action']))
                    {
                        $module_action_langfile = 'modules/'.$this -> title['foldername'].'/actions/'.$this -> title_action['action'].'/lang/'.$this -> site -> lang.'.php';                        
                    }
                
                $mdlleng = array();
                if (file_exists($module_langfile))
                    {
                        include $module_langfile;
                    };
                if (file_exists($module_action_langfile))
                    {
                        include $module_action_langfile;
                    };

                */

                $q_kodmoule = $this -> title['kodmodule'];
                $q_lang = $this -> site -> lang;
                if (isset($this -> title_action['action'])){
                    $q_is_action = 1;
                    $q_action = $this -> title_action['action'];
                } else{
                    $q_is_action = 0;
                    $q_action = '';
                }


                $lang_query = "
                    select l.Marker, l.Text
                        from #database.language_markers l
                          inner join languages g on g.Id = l.Id_lang and g.Abbr = '$q_lang'
                        where l.Id_module = '$q_kodmoule'
                          and (
                              '$q_is_action' = 0
                              or
                              ('$q_is_action' = 1 and '$q_action' = l.Action)
                          )
                ";
                $lang_query_data = new mysql_querry($lang_query);

                $mdlleng = Array();
                foreach($lang_query_data -> result as $rowdata){
                    $mdlleng[$rowdata['Marker']] = $rowdata['Text'];
                }


                /*
                if ($this -> title['modulename'] == 'navigation'){
                    echo $lang_query_data -> outquerry;

                    echo 'языки для навигации';
                    echo '<pre>';
                    print_r($mdlleng);
                    echo '</pre>';
                    die();
                }
                */

                $this -> translations = $mdlleng;
                unset($mdlleng);
            }
        
        //собрать модуль
        function generate_content()
            {
                

                $buffer = $this -> templete;
                
                
                
                
                //накладываем данные исполняемых файлов на шаблон
                foreach ($this -> data as $key => $data)
                    {
                        $buffer = str_replace('{'.$key.'}',$data,$buffer); 
                    }
                                
                //накладываем данные словарей перевода
                foreach ($this -> translations as $key => $data)
                    {
                        $buffer = str_replace('{'.$key.'}',$data,$buffer); 
                    }
                
                if ($this -> show_only_this_module != 1)
                    {
                
                        //замена ссылки на css
                        $buffer = str_replace('{css}',$this -> css,$buffer);
                        
                        //замена ссылки на images
                        $buffer = str_replace('{images}',$this -> images,$buffer);

                    }

                //$content
                $this -> content = $buffer;                        
                    
                // Если нужно показать только этот модуль без сайта
                if ($this -> show_only_this_module == 1)
                    {
                        Echo $this -> content;
                        die();
                    } 
                
            }
    }
 
 ?>