<?php class article {

	public $firstname;

    public $age;

    public function get_name() {
		return $this->firstname;
	}

    public function set_age($val) {

        $val = intval($val);

        $val = $this->age;

        if($val >=18 && $val <=63) {
            return true;
        }
        else {
            return false;
        }
    }

    public function get_age() {
        return $this->age;
    }

} ?>
