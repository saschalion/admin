<?php

// Отображение записи

function __construct() {

    $path = $_SERVER['PHP_SELF'];

    $path = explode('.', $path);

    $path = str_replace('/', '', $path);

    $action_name = $path[0];

    $file = print include($_SERVER['SERVER_NAME'] . '/app/actions/class.' . $action_name. '.php');

    return $file;
}