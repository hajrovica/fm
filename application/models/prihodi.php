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

    function getGrupa()
    {
       $this->db->select('grupa_prihoda');
       $this->db->distinct();

       $query = $this->db->get('prihodi');
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