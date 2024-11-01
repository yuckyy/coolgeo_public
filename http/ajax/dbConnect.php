<?php
$db_host = 'mysql316.1gb.ua';
$db_name = 'gbua_cgdb';
$db_user = 'gbua_cgdb';
$db_pass = 'V4CN-6X-wNNN';
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
$mysqli->set_charset("utf8");
if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
  }
?>