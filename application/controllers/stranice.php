<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Stranice extends MY_Controller {

public function __construct()
   {
      parent::__construct();
      //Load Dependencies
      //$this->is_logged_in();
       $this->load->model('Prihodi');

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


    function ifgraph(){
      $this->_outpt('stranice/if');

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
        //$this->form_validation->set_rules('kontakt',  'Kontakt',  'required');
        $this->form_validation->set_rules('poruka',  'Poruka',  'required');

          if(!$this->form_validation->run()==FALSE) {

            $name = $this->input->post('name');
            $email = $this->input->post('email');
            $poruka = $this->input->post('poruka');
            $kontakt = $this->input->post('kontakt');

            switch ($kontakt) {
              case 'tim':
                $toEmail = array('zkarkin@fiskalnimonitor.ba', 'n.dervish@fiskalnimonitor.ba', 'amar.hajrovic@ssst.edu.ba');
                break;

              default:
                $toEmail = 'info@fiskalnimonitor.ba';
                break;
            }

            //control echo for vars
            //echo "$name | $email | $poruka";

            $this->email->from($email, $name);
            $this->email->to($toEmail);
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


    function fokus(){
      $this->load->helper('text');

        if ($this->uri->segment(3)) {
          $this->view_data['novosti'] = $this->Prihodi->novosti($this->uri->segment(2));
        }else{
          $this->view_data['novosti'] = $this->Prihodi->novosti('fokus');

        }




        $i = 0;
        foreach ($this->view_data['novosti'] as $arr => $novost) {
         $intro = word_limiter($novost['text'], 21);
         $this->view_data['novosti'][$i]['intro'] = $intro;
         $i++;
        }

    //$this->view_data['novosti']['intro'] = word_limiter($this->view_data['novosti']['text'], 3);


        // echo "<pre>";
        // print_r($this->view_data['novosti']);


      $this->_outpt('info/novosti');

    }

}