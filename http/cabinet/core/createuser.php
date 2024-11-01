<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 25.03.2019
 * Time: 19:58
 */

require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/user.php');

$user = new user($mysqli);
$user -> Register('admin', 'admin', '321321');

?>