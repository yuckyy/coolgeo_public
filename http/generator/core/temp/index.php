<?php

/**
 * @author SharedNoob 
 * @copyright 2013
 */ 
/*
echo '<pre>';
print_r($_GET);
echo '<br /><br />';
print_r($_POST);
echo '</pre>';
*/   
	//echo $_SERVER['SERVER_ADDR'];
    
    session_start();

/*
echo '<pre>';
echo $_SESSION['lang'];
echo '</pre>';
*/

    header("http/1.0 200 Ok");
    
    ini_set('default_charset', 'UTF-8');
    
    error_reporting(E_ALL);

    include 'core/core.php';
    $site = new site();
    $site -> compile();
    echo $site -> content;
    

?>