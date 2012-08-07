<style type="text/css">

/*  Table design*/
#background-image
{
    font-family: "PT Sans Narrow",  "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    font-size: 21px;
    margin: 45px;
    width: 75%;
    text-align: left;
    border-collapse: collapse;
    /*background: url('<?php echo base_url(); ?>images/assets/crnilogo.png') 90% 80% no-repeat;*/
}
#background-image th
{
    padding: 12px;
    font-weight: normal;
    font-size: 17px;
    /*color: #339;*/
    color: #000;
}
#background-image td
{
    padding: 9px 12px;
    /*color: #669;*/
    color: #2A2A2A;
    border-top: 1px solid #fff;
    font-size: 17px;
    text-align: left;
    font-weight:normal;
}
#background-image tfoot td
{
    font-size: 21px;
}
#background-image tbody td
{
    background: url('<?php echo base_url(); ?>images/table-images/back.png');
}
* html #background-image tbody td
{
    /*
       ----------------------------
        PUT THIS ON IE6 ONLY STYLE
        AS THE RULE INVALIDATES
        YOUR STYLESHEET
       ----------------------------
    */
    filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo base_url(); ?>table-images/back.png',sizingMethod='crop');
    background: none;
}
#background-image tbody tr:hover td
{
    color: #339;
    background: none;
}



</style>

<script type="text/javascript">
jQuery(document).ready(function() {
jQuery(".sadrzaj").hide();
  //toggle the componenet with class msg_body
  jQuery(".nazivGrupe").css('cursor','pointer');
  jQuery(".nazivGrupe").click(function()
  {
    jQuery(this).next(".sadrzaj").animate({ opacity: ['toggle', 'swing'], height: ['toggle', 'swing'] }, {
    duration: 1000,
    specialEasing: {
      width: 'swing',
      height: 'easeOutBounce'
    }});
  });

});

</script>
<?php $this->load->view('includes/right_div'); ?>
<div class="wh" <?php if (!$_POST) {echo "style=\"width:75%;\"";} ?>>
  <br><br>
  <h1>Rangiraj</h1> <br>
  <h3>Rangirajte opštinu/grada po rashodima </h3>
  <br>


  <?php
// ************* START FLASH DATA **********************************
  if ($this->session->flashdata('message')): ?>
  <br><div class="error"> <?=$this->session->flashdata('message')?> </div>
  <?php endif;

  if (isset($alert)) {
    echo $alert;
  }
// ************* END FLASH DATA **********************************

//LOAD FORM
  $this->load->view('info/_form_uporedi');

//Declare VARS to prevent errors
  $this->view_data = array();
  $series_data = array();
  $series_stanovnik=array();


// ********* CONTROL PRINT ***************

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";



// ********* CONTROL PRINT  END **********

if ($_POST) {
//print_r($_POST);

?>

 <table id="background-image" style="width:90%;">

            <thead>
            <tr>
            <th scope="col">Grad/Opština</th>
            <th scope="col" style="text-align:center;">Ukupno(KM) - <?php echo $this->input->post('grupa'); ?></th>

            </tr>
            </thead>
            <tfoot>
            <tr>
            <td colspan="2"> </td>
            </tr>
            </tfoot>


            <tbody>
           <?php
                foreach ($arr1 as $grad => $value) {
                $value = number_format($value, $decimals=2, $dec_point = '.', $thousands_sep = ',') . " KM";

echo <<<HTML
              <tr>
              <td width="60%">{$grad}</td>
              <td style="text-align:center;">{$value}</td>
              </tr>
HTML;
              }


            ?>



            </tbody>
            </table>




<?php

     $sml_pojmovi = img(array(
        'src'=>'images/assets/fm/sml_pojmovi.png',
        'height'=>'33',
        'class'=>'fade'

        ));

?>
<table id="background-image" style="width:30%; float:right; margin:3px;">


<tbody>


<tr>
<td style="vertical-align:middle; text-align:center;">Nastavi istraživati</td>
<td style="text-align:center;"> <?php echo anchor('info', $sml_pojmovi); ?></td>



</tr>



</tbody>
</table>

<br clear="all">
<?PHP








}



   ?>



</div>
