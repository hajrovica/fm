<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Csv_upload extends CI_Model {

   public function __construct()
   {
      parent::__construct();
      //Load Dependencies

   }

   // upload function
   function do_upload( $table )
   {
    $config['upload_path']= './upload/';
    $config['allowed_types']= 'csv';
    $config['file_name']= $table;
    $config['overwrite']= 'true';

    $this->load->library('upload', $config);

    $this->upload->do_upload();

   }

function csvImport($fields, $table)
    {
        $data = array();
        if ($table == 'prihodi') {

          foreach ($fields as $field){
            $data[] = array(
                   'stavka'=>$field['stavka'],
                    'ukupan_iznos'=>$field['ukupan_iznos'],
                    'procenat'=>$field['procenat'],
                    'prihod_stanovnik'=>$field['prihod_stanovnik'],
                    'grad'=>$field['grad'],
                    'grupa_prihoda'=>$field['grupa_prihoda'],
                    //'tip_prihoda'=>$field['tip_prihoda'],
                    'godina'=>$field['godina'],
                    'entitet'=>$field['entitet'],
                );
          }
        //}
        }else{
          foreach ($fields as $field){
            $data[] = array(
                   'stavka'=>$field['stavka'],
                    'ukupan_iznos'=>$field['ukupan_iznos'],
                    'procenat'=>$field['procenat'],
                    'rashod_stanovnik'=>$field['rashod_stanovnik'],
                    'grad'=>$field['grad'],
                    'grupa_rashoda'=>$field['grupa_rashoda'],
                    //'tip_rashoda'=>$field['tip_prihoda'],
                    'godina'=>$field['godina'],
                    'entitet'=>$field['entitet'],
                );
        //}
        }




    }

        // echo "<pre>";
        // print_r($data);
        // echo "</pre>";

        if ($this->db->insert_batch($table, $data)) {
          return TRUE;
        };

    }


}