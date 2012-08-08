<?php

class Prihodi extends CI_Model {


    function getGrad($table)
    {
       $this->db->select('grad');
       $this->db->order_by('grad');
       $this->db->distinct();

       $query = $this->db->get("$table");

       if ($query) {

            return $query->result_array();

       }
    }

    function selectGrad($table){

    $arr = array();

    $grad = $this->getGrad($table);
    $arr['none'] = 'opština/grad';
      foreach ($grad as $val => $value) {
        $arr[$value['grad']] = $value['grad'];
      }

    return $arr;

    }

    function getGodina($table)
    {
       $this->db->select('godina');
       $this->db->distinct();


       $query = $this->db->get("$table");

       if ($query) {
            return $query->result_array();
       }
    }
    //build select values from DB godina
    function selectGodina($table){

        // set array var for use  - value lists
        $arr = array();
        $data['godina'] = $this->getGodina($table);
        //get godina in $arr
        foreach ($data['godina'] as $val => $value) {
           $arr[$value['godina']]=$value['godina'];
        }

        //send godina as godina_arr value to view
        return $arr;
        //clear arr value for grad
        //unset ($arr);

    }

    //build select values from DB grupa
    function selectGrupa($table = null){
      $arr = array();
      $data['grupa'] = $this->getGrupa($table);

      //get grupa in array
      //print_r($data['grupa']);


      //lets make this function work for rashodi and prihodi
      // so lets declare variable for building of values

      $grupa=null;

      //this var can have 2 values grupa_prihoda or grupa_rashoda
      //so lets define them based on $table parameter - on which table we are looking in

      if ($table == 'prihodi') {
        $grupa = 'grupa_prihoda';
      }


      if ($table == 'rashodi') {
        $grupa = 'grupa_rashoda';
      }

      //$grupa var is declared

      foreach ($data['grupa'] as $val => $value) {
        //so we put $grupa in array building statment to get correct values
        $arr[$value[$grupa]]=$value[$grupa];
      }
      return $arr;
      //and now this function is working for both rashodi and prihodi

    }

    //get array of values from DB
    function getGrupa($table = null)
    {
       if ($table == 'rashodi') {
         $col = 'grupa_rashoda';
       }else{
        $col = 'grupa_prihoda';
       }

       $this->db->select($col);
       $this->db->distinct();
       if (isset($table)) {
         $query = $this->db->get($table);
       }else{
        $query = $this->db->get('prihodi');

       }

       if ($query) {
            return $query->result_array();
       }
    }

    function getStavka_Jq(){


      // echo("<pre>");
      // print_r($data);

        $jqSelect = array();
        $dat = null;
        $data = $this->getGrupa('rashodi');
        //$dat = array();

          foreach ($data as $key => $value) {

           $val = $value['grupa_rashoda'];

           $dat[$val] = $this->Stavka_Jq($val);




      }

      // echo "<pre>";
      // print_r($dat);
      //$dat = explode('|', $dat);
      //array_pop($dat);

      // echo "<pre>";
      // print_r($dat);
       $jsData = json_encode($dat);

     $dd = null;

     $dd .= "<select id=\"uporedi\">";
        foreach ($dat as $key => $value) {
          //$dat = explode(' >> ', $value);
          //print_r($dat);
          $dd .= "<option value=\"$key\">$key</option>";

         // $dat[1] . '-' . $value . "<br>";
        }

     $dd .= "</select>";
     return array('dd'=>$dd, 'json'=>$jsData);
     //echo "$dd";
      // echo "<pre>";
      // print_r($jqSelect);



    }

    function Stavka_Jq($group = null){
      // $group = 'TEKUĆI RASHODI';

      $this->db->select('stavka');
      $this->db->distinct();
      $this->db->where('grupa_rashoda', $group);

      $query = $this->db->get('rashodi');
      //echo $query->num_rows();

      $val = $query->result();

      if ($val) {

          $ret = null;

          $arr_cnt = count($val);
          $i= 0;
          foreach ($val as $row) {
            $i ++;
            // $ret .=  $group . ' >> '. $row->stavka. '|';
            // $ret .= '*'.$group . ' - ' . $row->stavka. '<br>';

            $ret .= $row->stavka;
            if ($i<$arr_cnt) {

                $ret .= ',';
            }

          }
          //print_r($ret);
         // echo $ret;
          return $ret;

        }

    }

    // function to build acceptable array for select - why did not i maded as part of this function?!
    //function for uporedi opstine we will get stavka column of rashodi where group is something
    function getStavka(){
      //$group = 'TEKUĆI RASHODI';

      $this->db->select('stavka');
      $this->db->distinct();

      // if (isset($group)) {
      //   # code...

      //   $this->db->where('grupa_rashoda', $group);
      // }


      $query = $this->db->get('rashodi');

       $arr = null;
       if ($query) {
            $data = $query->result();

            //echo "<pre>";
            // echo "<hr>";
            // echo $data;
            //print_r($data);


            //$da = null;
            foreach ($data as $val => $value) {
            //so we put $grupa in array building statment to get correct values
            //print_r($value);
            //$da .= $value->stavka . ' >> ';
            $arr[$value->stavka]=$value->stavka;


            //$arr[$value->stavka]=$value->stavka;
        }
        //echo $da;
        //echo "$arr";
        return $arr;


      }
    }




    function getOpcina($var)
    {
       $this->db->where('opcina', $var);
       $query = $this->db->get('opcina');
       if ($query) {
            return $query->result();
       }
    }

//********** Main get functions for Prihod / Rashod
    function getPrihod($grad, $godina){
      $this->db->where('grad', $grad);
      $this->db->where('godina', $godina);
      $this->db->order_by("grupa_prihoda");
      $query=$this->db->get('prihodi');

      if ($query) {
          return $query->result_array();

      }else{

        die('Show Prihod Error!');
      }

    }

    function getRashod($grad, $godina){
      $this->db->where('grad', $grad);
      $this->db->where('godina', $godina);
      $this->db->order_by('grupa_rashoda');

      $query = $this->db->get('rashodi');

      if ($query) {
        return $query->result_array();
      }else
     {
      die('Query Rashod ERRORR!');
     }
   }


   function sumGrupa($grad, $godina, $grupa){
    //$this->db->select('rashod_stanovnik');
    $this->db->where('grad', $grad);
    $this->db->where('godina', $godina);

    //this was used for group selection
    //$this->db->where('grupa_rashoda', $grupa);

    //now we need stavka selection
    $this->db->where('stavka',  $grupa);


    $query = $this->db->get('rashodi');

    $arr = array();
    if ($query) {
      $arr = $query->result_array();

      foreach ($arr as $val => $value) {

        //when we looked up sumo f rashod we used this option
        //$arry[] = $value['ukupan_iznos'];

        //now when we are based on person we are using
        $arry[] = $value['rashod_stanovnik'];
      }

     return $arry;
      //return $query->result_array();

    }else{

      die('Query sumGrupa ERROR ');
    }



   }


  function rangiraj($godina, $grupa){
    //$this->db->select('ukupan_iznos');
    //$this->db->where('grad', $grad);
    $this->db->where('godina', $godina);
    $this->db->where('grupa_rashoda', $grupa);
    $this->db->order_by('grad');


    $query = $this->db->get('rashodi');

    $arr = array();
    if ($query) {
      $arr = $query->result_array();

      foreach ($arr as $val => $value) {
        //$arry[][$value['grad']] = $value['ukupan_iznos'];
        //Change to show expenses by citizen
        $arry[][$value['grad']] = $value['rashod_stanovnik'];

      }

      $newarry = array();

      foreach ($arry as $value) {
        foreach ($value as $key => $secondValue) {
          if (!isset($newarr[$key])) {
            $newarr[$key]=0;
          }
          $newarr[$key] += $secondValue;
        }
      }
    arsort($newarr);
     //return $arry;
     return $newarr;
      //return $query->result_array();

    }else{

      die('Query sumGrupa ERROR ');
    }



   }



//************* Novosti blog functions *************************
    function novosti($var=null, $var1 = null){

        $this->db->order_by('id',  'DESC');
        if (isset($var1)) {
          # code...
        $this->db->where('id', $var1);
        }

        $this->db->like('tip', $var);

        $query = $this->db->get('novosti');

        if ($query) {
            return $query->result_array();
            }else{
            die('Query Novosti ERRORR!');
            }




    }

}