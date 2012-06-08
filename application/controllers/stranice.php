<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Stranice extends MY_Controller {

public function __construct()
   {
      parent::__construct();
      //Load Dependencies
      //$this->is_logged_in();

   }

    function index(){
      $this->_outpt('stranice/index');

    }


    public function fm()
    {
        //call predefined view
        $this->_outpt('stranice/fm');
    }
    function novac(){
      $this->_outpt('stranice/novac');

    }

    public function onama()
    {
        //call predefined view
        $this->_outpt('stranice/onama');
    }


    public function pojmovi()
    {
        //call predefined view
        $this->_outpt('stranice/pojmovi');
    }


    public function kontakt()
    {

      //$data['main_content'] = 'stranice/kontakt';
      //$this->load->view('includes/template', $data);


        $this->load->library('email');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('name',  'Name',  'required');
        $this->form_validation->set_rules('email',  'Email',  'required|valid_email');
        $this->form_validation->set_rules('poruka',  'Poruka',  'required');

          if(!$this->form_validation->run()==FALSE) {

            $name = $this->input->post('name');
            $email = $this->input->post('email');
            $poruka = $this->input->post('poruka');

            //control echo for vars
            //echo "$name | $email | $poruka";

            $this->email->from($email, $name);
            $this->email->to('info@fiskalnimonitor.ba');
            $this->email->subject('Kontakt sa stranice');
            $this->email->message($poruka);


            if ($this->email->send()) {
               $alert = array(
                  "msg"=>"Hvala $name, Vaša poruka je poslana.",
                  "type"=>"msgsuccess"
               );

               $this->view_data['sent_ok'] = $this->_alert($alert, 'sent_ok');
               //$data['page'] = $this->email->print_debugger();


            }else {
            $this->view_data['sent_err']=$this->_alert(array('msg'=>'Greška prilikom slanja!', 'type'=>'msgerror'), 'sent_err');
            //$data['page']=$this->email->print_debugger();
            }
      }

      //$this->load->view('includes/template', $data);
      $this->_outpt('stranice/kontakt');

    }

}