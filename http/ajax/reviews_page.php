<?php
/**
 * Created by PhpStorm.
 * User: fatman
 * Date: 24.07.2018
 * Time: 16:36
 */

session_start();
header("http/1.0 200 Ok");
ini_set('default_charset', 'UTF-8');
error_reporting(E_ALL);

$data = Array();
$data['status'] = 'success';

$FilePath = '../generator/core/class_reviews_pagelist.php';
include $FilePath;

$reviews_list = new reviews_pagelist($_GET['page_number']);
$data['CONTENT'] = $reviews_list->CONTENT;
$json_object = json_encode($data);
echo $json_object;

?>