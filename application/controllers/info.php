<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Info extends MY_Controller {

   public function __construct()
   {
      parent::__construct();
      //Load Dependencies
      $this->load->model('Prihodi');


   }

   // List all your items
   public function index()
   {
        $this->_outpt('info/index');
         //$this->view_data['main_content'] = 'info/index';
         //$this->load->view('template', $this->view_data);
        //$this->_outpt('info/index');
   }

   // Add a new item
   public function prihodi()
   {
        //$this->load->model('Prihodi');
        //$this->view_data['main_content'] = 'info/prihodi';

        $this->view_data['grupa'] = $this->Prihodi->getGrupa();

        //select godina and send it as var to view
        $this->view_data['godina_arr'] = $this->Prihodi->selectGodina('prihodi');
        $this->view_data['godina_cnt'] = count($this->view_data['godina_arr']);
        //echo "GODINA:" . count($this->view_data['godina_arr']);

        $series_data = array();



        //select grad
        $this->view_data['grad_arr'] = $this->Prihodi->selectGrad('prihodi');

        //*******************POST FORM*********************
        if ($_POST) {
            // echo $this->input->post('grad');
            // echo $this->input->post('godina');

            $this->view_data['table'] = $this->Prihodi->getPrihod($this->input->post('grad'), $this->input->post('godina'));
            if (count($this->view_data['table'])==0) {
              $alert = array(
                  "msg"=>"Nema unosa u bazi sa zadanim parametrima!.",
                  "type"=>"msgerror"
               );

               $this->view_data['alert'] = $this->_alert($alert, 'alert');
            }

            $this->view_data['opcina_arr'] = $this->Prihodi->getOpcina($this->input->post('grad'));
            if (!$this->view_data['opcina_arr']) {

              $this->view_data['opcina_arr'][0]->opcina = 'Opcina ne postoji';
              $this->view_data['opcina_arr'][0]->info = 'Informacije ne postoje';

              // echo "<pre>";
              // print_r($this->view_data['opcina_arr']);
              // echo "</pre>";

              //  $alert = array(
              //     "msg"=>"Opcina ne postoji!.",
              //     "type"=>"msgerror"
              //  );

              //  $this->view_data['alert'] = $this->_alert($alert, 'alert');


            }
        }

        //*************************************************
        //*****************BUILD TABLE*********************
        function tabelaSadrzaj($record, $group=null,  $rnd = null){

            $rnd .="<tr>";
            $rnd .="<td>&nbsp;</td>";
            $rnd .="<td>".$record['stavka']."</td>";
            $rnd .="<td>".number_format($record['ukupan_iznos'], $decimals=2, $dec_point = '.', $thousands_sep = ',')."</td>";
            $rnd .="<td>".number_format($record['procenat'], $decimals=2, $dec_point = '.', $thousands_sep = ',')."</td>";
            $rnd .="<td>".number_format($record['prihod_stanovnik'], $decimals=2, $dec_point = '.', $thousands_sep = ',')."</td>";
            $rnd .="</tr>";


            return $rnd;


        }

        //*************Hcharts ********************************************
        // $series_data[] = array('name'=>'Alastair', 'data'=>array(3,6,9));
        // $series_data[] = array('name'=>'Joane',  'data'=>array(1,9,7));

        $this->view_data['series_data'] = json_encode($series_data);
        //***************************************************************

        //$this->load->view('template', $this->view_data);
        $this->_outpt('info/prihodi');

   }

   function rashodi(){

    //$data['main_content'] = 'info/rashodi';

    //select grad and godina
    $this->view_data['godina_arr'] = $this->Prihodi->selectGodina('rashodi');
    $this->view_data['grad_arr'] = $this->Prihodi->selectGrad('rashodi');
    $this->view_data['godina_cnt'] = count($this->view_data['godina_arr']);

    if ($_POST) {
      $this->view_data['table'] = $this->Prihodi->getRashod($this->input->post('grad'), $this->input->post('godina'));
       if (count($this->view_data['table'])==0) {
              $alert = array(
                  "msg"=>"Nema unosa u bazi sa zadanim parametrima!.",
                  "type"=>"msgerror"
               );

               $this->view_data['alert'] = $this->_alert($alert, 'alert');
            }

            $this->view_data['opcina_arr'] = $this->Prihodi->getOpcina($this->input->post('grad'));
            if (!$this->view_data['opcina_arr']) {

              $this->view_data['opcina_arr'][0]->opcina = 'Opcina ne postoji';
              $this->view_data['opcina_arr'][0]->info = 'Informacije ne postoje';

              // echo "<pre>";
              // print_r($this->view_data['opcina_arr']);
              // echo "</pre>";

               // $alert = array(
               //    "msg"=>"Opcina ne postoji!.",
               //    "type"=>"msgerror"
               // );

               // $this->view_data['alert'] = $this->_alert($alert, 'alert');


            }

      // echo "<pre>";
      // print_r($data['table']);
      // echo "<pre>";
    }

            //*************************************************
        //*****************BUILD TABLE*********************
        function tabelaSadrzaj($record, $group=null,  $rnd = null){
            $rnd .="<tr class=\"$group\">";
            $rnd .="<td>&nbsp;</td>";
            $rnd .="<td>".$record['stavka']."</td>";
            $rnd .="<td>".number_format($record['ukupan_iznos'], $decimals=2, $dec_point = '.', $thousands_sep = ',')."</td>";
            $rnd .="<td>".number_format($record['procenat'], $decimals=2, $dec_point = '.', $thousands_sep = ',')."</td>";
            $rnd .="<td>".number_format($record['rashod_stanovnik'], $decimals=2, $dec_point = '.', $thousands_sep = ',')."</td>";
            $rnd .="</tr>";

            return $rnd;
            //echo $this->view_data['rnd'] = $rnd;



        }

     //$this->load->view('includes/template', $data);
     $this->_outpt('info/rashodi');
   }

   function novosti(){
    $this->load->helper('text');

        if ($this->uri->segment(2)) {
          $this->view_data['novosti'] = $this->Prihodi->novosti($this->uri->segment(2));
        }else{
          $this->view_data['novosti'] = $this->Prihodi->novosti();

        }


        $i = 0;
        foreach ($this->view_data['novosti'] as $arr => $novost) {
         $intro = word_limiter($novost['text'], 21);
         $this->view_data['novosti'][$i]['intro'] = $intro;
         $i++;
        }

    //$this->view_data['novosti']['intro'] = word_limiter($this->view_data['novosti']['text'], 3);



    $this->_outpt('info/novosti');
   }


   function uporedi()
         {
          //Select grad for rashodi DB
          $grad = $this->Prihodi->selectGrad('rashodi');
          //assign grad to multiple vars
          $this->view_data['grad_arr'] = $this->view_data['grad_arr1'] = $this->view_data['grad_arr2'] = $grad;
          $this->view_data['godina_arr'] = $this->Prihodi->selectGodina('rashodi');
          $this->view_data['grupa_arr'] = $this->Prihodi->selectGrupa('rashodi');

          $this->view_data['godina_cnt'] = count($this->view_data['godina_arr']);



          if ($_POST) {
           // echo $this->input->post('grad') . "AND " . $this->input->post('godina') . $this->input->post('grupa') . "<hr>";

            $this->Prihodi->getStavka_Jq();
            // $this->Prihodi->getStavka();

            //declare shorter vars for ease reading
            $grad = $this->input->post('grad');
            $grad2 = $this->input->post('grad1');
            $grad3 = $this->input->post('grad2');

            $godina = $this->input->post('godina');
            $grupa = $this->input->post('grupa');

            //ok lets get stavke from DB
            //$this->view_data['stavka_arr'] = $this->Prihodi->getStavka($grupa);

            // $stavka = $this->input->post('stavka');


            // if ($stavka_arr) {

            //               //so lets query db with selected values

            //               //city ONE
            //               $arr1 = $this->Prihodi->sumGrupa($grad, $godina, $grupa);

            //               //city two
            //               $arr2 = $this->Prihodi->sumGrupa($grad2, $godina, $grupa);

            //               //city THREE
            //               $arr3 = $this->Prihodi->sumGrupa($grad3, $godina, $grupa);

            //               //ok so lets get sums of those arrays

            //               $sum1 = array_sum($arr1);
            //               $sum2 = array_sum($arr2);
            //               $sum3 = array_sum($arr3);


            //               //so lets send variables to view for our chart use

            //               //cities - first :P

            //               $this->view_data['grad1'] = $grad;
            //               $this->view_data['grad2'] = $grad2;
            //               $this->view_data['grad3'] = $grad3;

            //               //Ok passing of formatted values for charts does not work (issue of . and , in number)
            //               // so we are going back to original unformatted vals

            //               $this->view_data['sum1'] = $sum1;
            //               $this->view_data['sum2'] = $sum2;
            //               $this->view_data['sum3'] = $sum3;


            //         //***************** START CONTROL PRINTOUT *********************//

            //               //so lets spit formatted sums just for fun of it

            //               $frmt_sum1 = number_format($sum1, $decimals = 2, $dec_point = '.',   $thousands_sep = ',');
            //               $frmt_sum2 = number_format($sum2, $decimals = 2, $dec_point = '.',   $thousands_sep = ',');
            //               $frmt_sum3 = number_format($sum3, $decimals = 2, $dec_point = '.',   $thousands_sep = ',');



            //              // echo $sum1 . ' ---- ' . $sum2 . ' ---- ' .$sum3 . "<br";

            // }

          }

         //  echo "<br>control printout";
         //  echo "<pre>";
         // // print_r($this->view_data['cntrl']);
         //  echo "</pre>";
      //***************** END  CONTROL PRINTOUT *********************//



          //call view for this function
          // $this->_outpt('info/uporedi');
         }

     function rangiraj(){


          $this->view_data['godina_arr'] = $this->Prihodi->selectGodina('rashodi');
          $this->view_data['grupa_arr'] = $this->Prihodi->selectGrupa('rashodi');
          $this->view_data['godina_cnt'] = count($this->view_data['godina_arr']);


          $arr1 = array();

            if ($_POST) {

              //declare shorter vars for ease reading
            $grad = $this->input->post('grad');

            $godina = $this->input->post('godina');
            $grupa = $this->input->post('grupa');


              $this->view_data['arr1'] = $arr1 = $this->Prihodi->rangiraj($godina, $grupa);

            }
          //call view for this function
          $this->_outpt('info/rangiraj');


          //***************** START CONTROL PRINTOUT *********************//



          // echo "<br>control printout";
          // echo "<pre>";
          // print_r($arr1);
          // echo "</pre>";
      //***************** END  CONTROL PRINTOUT *********************//


         }

}