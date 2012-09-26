<?php
define("LOGFILE", realpath(dirname(__FILE__) . "logs/") . "logs.txt");
class logger
{
    private $loggerStream;
    private static $instance;

    public function __construct()
    {
        $this->loggerStream = fopen(LOGFILE, "a+");
    }

    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new self;
        }
        return self::$instance;
    }

    public function addError($msg, $line, $file)
    {
        fwrite($this->loggerStream, "nn{$file} ({$line})n{$msg}");
    }

    public function __destruct()
    {
        fclose($this->loggerStream);
    }
}