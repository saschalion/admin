<?php
class base_model
{


    function escape($value) {
        $record = mysql_real_escape_string($value);

        return $record;
    }

    function query($value) {
        $sql = mysql_query($value);

        return $sql;
    }
}
