<?php
class Auth extends MY_Controller{

/**
 * undocumented function
 *
 * @return void
 * @author
 **/
function index(){

          $this->login();
}

function login()
    {

        $data['main_content'] = 'login';

        $this->load->model('User');

        if ($_POST) {
            // User has submitted the login form
            $user = $this->User->validate_login($_POST['username'],  $_POST['password']);

            if ($user){
                $data = array(
                'username' => $this->input->post('username'),
                'is_logged_in' => true
                 );

                $this->session->set_userdata($data);
                redirect('dashboard');

            }
            else{

                $message = array('msg'=>'Login failed',
                                 'type'=>'msgerror'
                                 );
                $this->view_data['alert'] =$this->_alert($message, 'alert');
                //$this->login();

            }


        }
        //$this->load->view('includes/template', $data);
        $this->_outpt('login');
    }



    function logout(){

        $this->session->sess_destroy();
        redirect('');
    }


}