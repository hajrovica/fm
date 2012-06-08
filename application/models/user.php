<?php

class User extends CI_Model {


    /*var $password = true;

    /**
     * undocumented function
     *
     * @return void
     * @author
     *
    function before_save()
    {
        if ($this->password){
            $this->hashed_password = $this->hash_password($this->password);
        }
    }*/


    //tgis function is cleaner version of above commented-out code
    function set_password($plaintext){
        $this->hashed_password = $this->hash_password($plaintext);
    }

    private function hash_password($password){
        $salt = bin2hex(mcrypt_create_iv(32, MCRYPT_DEV_URANDOM));
        $hash = hash('sha256', $salt . $password);

        //Little test mechanism salt and hash gived strange results because there was typo
        //$salt + $hash instead of +  . is needed
        //echo $salt . "||||" . $hash. "<hr>";
        return $salt . $hash;

    }

    private function validate_password($password){
        //get salt and hash by substr salt first 64 bytes hash second 64 bytes
        $salt= substr($this->hashed_password, 0, 64);
        $hash= substr($this->hashed_password, 64, 64);

        $password_hash = hash('sha256', $salt . $password);

        return $password_hash == $hash;
    }

    function validate_login ($username,  $password){
        //$user = User::find_by_username($username);
        $this->db->where('username', $username);
        $this->db->where('password', $password);
        $user = $this->db->get('users');

        if ($user->num_rows == 1) {
            return TRUE;

        }

        // if ($user && $this->validate_password($password)){

        //         User::login($user->id);
        //         return $user;
        // }
        // else
        //     return false;

    }


    public static function login($user_id){
        $CI=& get_instance();
        $CI->session->set_userdata('user_id', $user_id);

    }

    public static function logout(){

        $CI=& get_instance();
        $CI->session->sess_destroy();
    }
}
