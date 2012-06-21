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
    //$this->db->select('ukupan_iznos');
    $this->db->where('grad', $grad);
    $this->db->where('godina', $godina);
    $this->db->where('grupa_rashoda', $grupa);


    $query = $this->db->get('rashodi');

    $arr = array();
    if ($query) {
      $arr = $query->result_array();

      foreach ($arr as $val => $value) {
        $arry[] = $value['ukupan_iznos'];
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
        $arry[][$value['grad']] = $value['ukupan_iznos'];

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
    function novosti($var=null){

        $this->db->order_by('id',  'DESC');
        if (isset($var)) {
          # code...
        $this->db->where('id', $var);
        }

        $query = $this->db->get('novosti');

        if ($query) {
            return $query->result_array();
            }else{
            die('Query Novosti ERRORR!');
            }




    }

}