<?php
class MY_Controller extends CI_Controller{
// var $user = FALSE;


// //Layout  /  Autoview functionality
// protected $layout_view = 'application';
// protected $content_view = '';
// protected $view_data = array();


function __construct()
    {
        parent::__construct();

       // $this->user = $this->session->userdata('user_id') ? User::find($this->session->userdata('user_id')) : FALSE;
        $this->bcrumbs();

    }

public function _outpt($val=null, $data=null)
    {

        $this->view_data['main_content'] = $val;
        $this->load->view('template', $this->view_data);
    }

// public function _output($output){

//     //set default content view
//     if ($this->content_view !== FALSE && empty($this->content_view)) $this->content_view = $this->router->class . '/' . $this->router->method;

//     //render content view
//     $yield = file_exists(APPPATH . 'views/' . $this->content_view . EXT) ? $this->load->view($this->content_view, $this->view_data, TRUE) : FALSE;

//     //render layout
//     if ($this->layout_view)
//         echo $this->load->view('layout/' . $this->layout_view, array('yield' => $yield), TRUE);
//     else
//         echo $yield;

//     //enable profiler
//     //echo $output;

// }
/////////////// Utility functions
////**********
    function is_logged_in()
    {
        $is_logged_in = $this->session->userdata('is_logged_in');
        if(!isset($is_logged_in) || $is_logged_in != true)
        {
            echo 'You don\'t have permission to access this page. <a href="../login">Login</a>';
            die();
            //$this->load->view('login_form');
        }
    }



    function _example_output($output=null, $message=null)
    {
        $this->layout_view = 'dashboard';
        if (isset($message)) {
            $this->_alert($message);
        }
        $this->load->view('layout/dashboard', $output);


    }

    function _page($page=null)
    {
        $page=$this->parser->parse('block', $page, TRUE);
        $this->view_data['page'] = $page;
    }

    function _alert($message=null, $messageType=null)
    {
        //$message is array with parameters {msg} and {type}  - needed to be dynamic

        // if (isset($messageType)) {
        //     $messageType = $messageType;
        // }else{
        //     $messageType = 'msgblock';
        // }
        $page=$this->parser->parse('blocks/message', $message, TRUE);

        //need to return content, else no output
        return $page;




    }

        function _csvform($page=null)
    {
        $page=$this->parser->parse('blocks/form_csv', $page, TRUE);
        $data['page'] = $page;
        $this->load->view('dashboard/gcrud', $data);

        //$this->view_data['body_alert'] = $page;

        //return $this->view_data['csvForm'];


    }

    public function bcrumbs(){
        //ok lets define methods first

        switch ($this->router->method) {
                case 'pojmovi':
                $pag = 'pojmovi';
                break;

                case 'onama':
                $pag = 'o nama';
                break;


                case 'kontakt':
                $pag = 'Kontakt';
                break;

                case 'novac':
                $pag = 'novac';
                break;


                case 'novosti':
                $pag = 'blog';
                break;


                case 'prihodi':
                $pag = 'prihodi';
                break;


                case 'rashodi':
                $pag = 'rashodi';
                break;


                case 'uporedi':
                $pag = 'uporedi rashode';
                break;


                case 'fm':
                $pag = 'Fiskalni monitor';
                break;

                case 'rangiraj':
                $pag = 'Rangiraj gradove/opštine';
                break;

            default:
                $pag = '';
                break;
        }

        if ($this->router->class == 'stranice') {
            $section = null;
        }elseif ($this->router->class == 'info') {
            $section = 'Gdje novac ide?';
        }
        $section .=" - ";

        $bcrumb = "   " . strtoupper($section) . strtoupper($pag);

        return $this->view_data['bcrumbs'] = $bcrumb;

    }
//////////////////////// END utility functions
    ////////////////////////////////////////////

}
