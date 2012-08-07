<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Dashboard extends MY_Controller {

   public function __construct()
   {
      parent::__construct();
      //Load Dependencies
      $this->is_logged_in();

   }

   // List all your items
   public function index($data=null)
   {
    $this->_outpt('dashboard', $data);
    // $this->load->view('dashboard');

   }

   //--------------- START GROCERY CRUD ----------------
   public function prihodi()
   {
      $crud = new grocery_CRUD();
      $crud->set_theme('datatables');

      $crud->set_table('prihodi')
         ->set_subject('Prihodi')
         ->columns('stavka', 'ukupan_iznos', 'procenat', 'prihod_stanovnik','grad', 'grupa_prihoda', 'godina')
         ->display_as('stavka', 'Stavka ime')
         ->display_as('procenat', 'Procenat')
         ->display_as('prihod_stanovnik', 'Prihod po stanovniku')
         ->display_as('grad', 'Grad')
         ->display_as('grupa_prihoda', 'Grupa/Tip prihoda')
         ->display_as('godina', 'Godina');

      $output = $crud->render();


      $this->load->view('dashboard/gcrud', $output);

   }

   function rashodi()
   {
      $crud = new grocery_CRUD();
      $crud->set_theme('datatables');

      $crud->set_table('rashodi')
         ->set_subject('Rashodi')
         ->columns('stavka', 'ukupan_iznos', 'procenat', 'rashod_stanovnik','grad', 'grupa_rashoda', 'godina', 'entitet')
         ->display_as('stavka', 'Stavka ime')
         ->display_as('procenat', 'Procenat')
         ->display_as('prihod_stanovnik', 'Prihod po stanovniku')
         ->display_as('grad', 'Grad')
         ->display_as('grupa_prihoda', 'Grupa/Tip prihoda')
         ->display_as('godina', 'Godina')
         ->display_as('entitet', 'Entitet');

      $output = $crud->render();


      $this->load->view('dashboard/gcrud', $output);

   }


   function opcine(){
      $crud = new grocery_CRUD();
      $crud->set_theme('datatables');

      $crud->set_table('opcina');

      $output = $crud->render();
      $this->load->view('dashboard/gcrud', $output);


   }

   function novosti(){
      $crud = new grocery_CRUD();
      $crud->set_theme('datatables');

      $crud->set_table('novosti');
      $crud->order_by('id','desc');

      $crud->set_field_upload('slika', 'images/news/');

      $output = $crud->render();
      $this->load->view('dashboard/gcrud', $output);


   }

   //-------------------END Grocery CRUD

   function csv_upload()
{
   $this->load->model('Csv_upload');
   //echo $this->uri->segment(3);

   //upload file name based on 3 segment prihodi, rashodi
   $this->Csv_upload->do_upload($this->uri->segment(3));


   $data = array('upload_data'=>$this->upload->data());
   //$this->load->view('dashboard', $data);
   // echo "<pre>";
   // print_r($data);
   // echo "</pre>";



   //this link build for easy switch o table data
   // we have prihodi/rashodi difference in field names
   $link=anchor('/dashboard/csv_import/'.$this->uri->segment(3), 'Continue to CSV import');
   $message = array(
            "msg"=>"File Uploaded! $link",
            "type"=>"msgsuccess"
            );

   //important  neeed to declare data before calling function no matter what output function gives
   $data['page'] = $this->_alert($message);
   $this->load->view('dashboard/gcrud', $data);

}

//function to call CSV form on page only that
function csv(){

//Check when callign form for firts time which action to assing it prihod or rashod
//this will be used for generating file name check csv_upload function above
   if ($this->uri->segment(3)=='prihodi') {
      $action = 'prihodi';
   }else{
      $action = 'rashodi';
   }


   $csvParams = array(
            'action'=>site_url().'/dashboard/csv_upload/'.$action,
            'title'=>"Select csv file for import to $action table"
            );
$this->_csvForm($csvParams);


}


   function csv_import(){

       $this->load->library('csvreader');
       $file = $this->uri->segment(3);


       $filepath="./upload/$file.csv";
       $data['csvData']=$this->csvreader->parse_file($filepath);

       //$message['title']=anchor('prihodi/csv_import', 'Insert records in DB');

       //key for dynamic descision which DB to use
       if ($file == 'prihodi') {
          $action = 'prihodi';
       }else{
          $action = 'rashodi';

       }

       $message=array(
         'msg'=>anchor('/dashboard/csv_import/'.$action.'/go', 'Insert records in DB'),
         "type"=>"msgsuccess"

         );
       $data['page']=$this->_alert($message);

      if ($this->uri->segment(4)) {

         $this->csvDB($data['csvData'], $action);
         //$this->csv_import($this->view_data['csvData']);

         $message=array(
         'msg'=>anchor('/dashboard/', 'CSV imported return to dashboard'),
         "type"=>"msgsuccess"

         );
       $data['page']=$this->_alert($message);


       }

    $this->load->view('dashboard/gcrud', $data);
   }

   function csvDB($val, $action)
   {
       echo "$val". " - -" ."$action";
       $this->load->model('Csv_upload');

       if ($this->Csv_upload->csvImport($val, $action)) {
                echo 'CSV IMPORTED!!!!';
                $message=array(
                     'msg'=>'RECORDS INSERTED',
                     "type"=>"msgsuccess"
                 );
               $data['page']=$this->_alert($message);
               //$this->index($data);
               //redirect('dashboard', $data);

            }else{

               echo "ERRRRRROOOOOORRRRRR!!!";
            }


   }
}