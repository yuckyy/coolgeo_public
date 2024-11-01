<?php

/**
 * @author SharedNoob
 * @copyright 2008
 */
 
    header("Content-Type: text/html; charset=utf-8");

    $this -> show_only_this_module = 1;  
    
    $this -> data['codemirror_root'] = $this -> site -> site_root_folder.'core/codemirror'; 
    
    $kodmodule = $this -> module_options['kodmodule'];
    $filetype = $this -> module_options['filetype'];
    $filename = $this -> module_options['filename'];
    
    $isaction = $this -> module_options['isaction'];
    $actionsysname = $this -> module_options['actionsysname'];


    $tempvar_action = '';
    if ($isaction == 1)
        {
            $tempvar_action = 'actions/'.$actionsysname.'/';
        }
      Else
        {
            $tempvar_action = '';
        }


    $mquerry = "select * from #database.modules where kodmodule='$kodmodule'";
    $mdata = new mysql_querry($mquerry);
    if (isset($mdata -> result[1]))
        {
            $module_title = $mdata -> result[1];    

            if ($filetype == 'executefile')
                {
                    $filepath = getcwd().'/modules/'.$module_title['foldername'].'/'.$tempvar_action.$filename;
                    $this -> data['editor_mode'] = 'application/x-httpd-php';
                    $this -> data['autocompletehint'] = 'anyword';
                }
                
            if ($filetype == 'module_javascript')
                {
                    $filepath = getcwd().'/modules/'.$module_title['foldername'].'/'.$tempvar_action.'scripts/'.$filename;
                    $this -> data['editor_mode'] = 'text/javascript';
                    $this -> data['autocompletehint'] = 'anyword';
                }

            if ($filetype == 'module_ajax')
                {
                    $filepath = getcwd().'/modules/'.$module_title['foldername'].'/'.$tempvar_action.'ajax/'.$filename;
                    $this -> data['editor_mode'] = 'application/x-httpd-php';
                    $this -> data['autocompletehint'] = 'anyword';
                }
                
            if ($filetype == 'module_lang')
                {
                    $filepath = getcwd().'/modules/'.$module_title['foldername'].'/'.$tempvar_action.'lang/'.$filename;
                    $this -> data['editor_mode'] = 'application/x-httpd-php';
                    $this -> data['autocompletehint'] = 'anyword';
                }
    
            if ($filetype == 'module_templete')
                {
                    $filepath = getcwd().'/'.$this -> site -> base_options['sitetempletepath']['value'].'/modules/'.$module_title['foldername'].'/'.$tempvar_action.$filename;
                    $this -> data['editor_mode'] = 'text/html';
                    $this -> data['autocompletehint'] = 'html';
                }
    
            if ($filetype == 'module_css')
                {
                    $filepath = getcwd().'/'.$this -> site -> base_options['sitetempletepath']['value'].'/modules/'.$module_title['foldername'].'/'.$tempvar_action.'{css}/'.$filename;
                    $this -> data['editor_mode'] = 'text/css';
                    $this -> data['autocompletehint'] = 'anyword';
                }



            $autonor = $_SESSION['accountid'];

            $mosConfig_locale = 'RU';
            DEFINE(_ADM_KA_LOCALE, 'ru_RU');
            setlocale (LC_ALL, $mosConfig_locale.'UTF8', _ADM_KA_LOCALE.'UTF8', $mosConfig_locale.'UTF-8', _ADM_KA_LOCALE.'UTF-8');
                
           if( !file_exists($filepath)) 
                {
                    $fp = fopen($filepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
           
                    if ($filetype == 'executefile')
                        {
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "<?php ". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "/**". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", " * @author $autonor". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", " */". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "?>". "\n"));        
                        }
        
                    if ($filetype == 'module_templete')
                        {

                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", '<link rel="stylesheet" href="{css}/module.css" type="text/css" media="screen"/>'. "\n"));
                        }
        
                    if ($filetype == 'module_ajax')
                        {
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "<?php ". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "/**". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", " * @author $autonor". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", " */". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "?>". "\n"));        
                        }
            
            
                    if ($filetype == 'module_lang')
                        {
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "<?php ". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "/**". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", " * @author $autonor". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", " */". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", '$mdlleng["lang_modulename"]="Модуль";'. "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "". "\n"));
                            fwrite($fp, iconv("WINDOWS-1251", "UTF-8", "?>". "\n"));        
                        }
        
                    fclose ($fp);
                }


            if ($isaction == 0)
                {
                    $redirectto = $this -> site -> site_root_folder.'adminpanel/admin_modules_module/'.$kodmodule;        
                }
            if ($isaction == 1)
                {
                    $redirectto = $this -> site -> site_root_folder.'adminpanel/admin_modules_action/'.$kodmodule.'/'.$actionsysname;
                }
            



            header('Location: '.$redirectto);    

        }
        



    
?>