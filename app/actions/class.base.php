<?php
class base {
    function __construct() {

        $path = $_SERVER['PHP_SELF'];

        $path = explode('.', $path);

        $path = str_replace('/', '', $path);

        $action_name = $path[0];

        $file = print require_once('./app/actions/class.' . $action_name. '.php');

        return $file;
    }
}