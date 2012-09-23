<?php class emp {
    public $firstname;
    public $lastname;

    function get_firstname() {
        return $this->firstname;
    }

    function get_lastname() {
        return $this->lastname;
    }

    function set_age($val) {
        $val = intval($val);

        if($val >= 18 && $val <=65) {
            $this->age = $val;
            return true;
        }
        else {
            return false;
        }
    }

    function get_age() {
        return $this->age;
    }

    function full_info() {
        return  $this->get_firstname() . ' ' . $this->get_lastname() . ' ' . ' (' .$this->get_age() . ')';
    }

    private $age;
} ?>