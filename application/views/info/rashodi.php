<style type="text/css">

/*  Table design*/
#background-image
{
    font-family: "PT Sans Narrow",  "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    font-size: 15px;
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
    font-size: 15px;
    /*color: #339;*/
    color: #000;
}
#background-image td
{
    padding: 9px 12px;
    /*color: #669;*/
    color: #2A2A2A;
    border-top: 1px solid #fff;
    text-align: left;
    font-weight:bold;
}
#background-image tfoot td
{
    font-size: 11px;
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
  <br> <br><h1>Rashodi</h1> <br> <h3>Pregledajte rashode opštine/grada </h3>
  <br>

  <?php if ($this->session->flashdata('message')): ?>
  <br><div class="error"> <?=$this->session->flashdata('message')?> </div>
  <?php endif;

  if (isset($alert)) {
    echo $alert;
  }

   ?>

  <?php $this->load->view('info/_form1');
  $this->view_data = array();
  $series_data = array();
  $series_stanovnik = array();

  // if ($_POST) {
  //     echo $this->input->post('grad');
  //     echo $this->input->post('godina');
  // }

  if (isset($table)): ?>

  <?php

          //decclare array to prevent error
          $set = array();

          //pull data in groups
          foreach ($table as $record) {
             $set[$record['grupa_rashoda']][] = $record;
          }


          // echo "<pre>";
          // print_r($set);
          // echo "</pre>";
  ?>
                 <div class="contenttitle radiusbottom0">
                      <h2 class="table"><span>Rashodi
                          <?php echo " | Grad:". nbs(1) .$this->input->post('grad'). nbs(1) ."(".$this->input->post('godina'); ?>)</span></h2>
              </div>

              <table cellpadding="0" cellspacing="0" border="0" class="stdtable">
              <colgroup>
                  <col class="con0" />
                  <col class="con1" />
                  <col class="con0" />
                  <col class="con1" />
                  <col class="con0" />
                  <col class="con1" />
                  <col class="con0" />
                  <col class="con1" />
                  <col class="con0" />
                  <col class="con1" />
              </colgroup>





              <thead>
                          <tr>
                              <th class="head0">&nbsp;&nbsp;&nbsp;</th>
                              <th class="head1">Stavka</th>
                              <th class="head0">Ukupan iznos (KM)</th>
                              <th class="head1">Procenat (%)</th>
                              <th class="head0">Rashod po stanovniku (KM)</th>

                          </tr>
                      </thead>

                      <?php $data['tabela'] = null;
                      //declare main total values to prevent errors
                      $main_total = null;
                      $main_proc = null;
                      $main_ps = null;

                      foreach ($set as $group => $records) {
                      //print "||||||||$group<br>";
                      echo '<tbody class="nazivGrupe">';
                      echo "<tr><td>-</td>
                                <td colspan=\"4\">
                                  <h3>$group</h3>
                                </td>
                            </tr>";
                      echo "</tbody>";

                      //declare vars to prevent errors and destroy values for next group
                      $tot = null;
                      $procenat = null;
                      $rash_stanovnik = null;
                      $td_total=null;
                      //$main_total = null;
                      $tot_values = null;
                      $tot_stanovnik = null;

                      echo "<tbody class=\"sadrzaj\">";
                      foreach ($records as $record) {

                      echo tabelaSadrzaj($record, $group);

                      //calculate subtotals - group totals
                      $tot += $record['ukupan_iznos'];
                      $procenat += $record['procenat'];
                      $rash_stanovnik += $record['rashod_stanovnik'];


                      }

                      $td_total .="<tr class=\"$group"." total\">";
                      //$td_total .="<td>!!!!</td>";
                      $td_total .="<td colspan=\"2\"><h4>Total:</h4></td>";
                      $td_total .="<td><h4>".number_format($tot, $decimals=2, $dec_point = '.', $thousands_sep = ',')."</h4></td>";
                      $td_total .="<td><h4>".number_format($procenat, $decimals=2, $dec_point = '.', $thousands_sep = ',')."</h4></td>";
                      $td_total .="<td><h4>".number_format($rash_stanovnik, $decimals=2, $dec_point = '.', $thousands_sep = ',')."</h4></td>";
                      $td_total .="</tr>";
                      echo $td_total;
                      echo "</tbody>";

                      //create array of totals for graph
                      //$tot_values[]=$tot;
                      $tot_stanovnik[]=$rash_stanovnik;
                      //calculate main table totals
                      $main_total += $tot;
                      $main_proc += $procenat;
                      $main_ps += $rash_stanovnik;

                      //release table part rendered for next group
                      $td_total = 0;
                      $arr = "["."'".$group."'". "," .$tot . "]";
                      //pass data for graph like array (name  array data)
                      //$series_data[] = array('name'=>$group, 'data'=>$tot_values);
                      $series_data[] =$arr;

                      $series_stanovnik[] = array('name'=>$group, 'data'=>$tot_stanovnik);

                      } ?>

                      <tfoot>
                  <tr>
                      <th class="head0">&nbsp;</th>
                      <th class="head1">Ukupno</th>
                      <th class="head0">Total:<?php echo number_format($main_total, $decimals=2, $dec_point = '.', $thousands_sep = ','); ?></th>
                      <th class="head1"><?php echo number_format($main_proc, $decimals=2, $dec_point = '.', $thousands_sep = ','); ?></th>
                      <th class="head0"><?php echo number_format($main_ps, $decimals=2, $dec_point = '.', $thousands_sep = ','); ?></th>

                  </tr>
              </tfoot>
          </table>
  <br clear="all">
  <br>
  <div id="charts" style="text-align:center;">
    <!-- START CHARTS by total and  prihod_stanovnik -->
    <div id="cnt" style="float:left;">1!!!</div>
    <div id="cnt1" style="margin-left:470px;">1!!!</div>
    <!-- END CHARTS -->


    <hr>
    <br clear="all">

    <!-- START Informacije opstina i meni -->
    <div class="one_half">
      <?php foreach ($opcina_arr as $opcine => $value):?>
      <h3>Informacije o opštini <?php echo $value->opcina; ?></h3>
        <br>
        <p>
          <?php echo $value->info; ?>
        </p>
      <?php endforeach ?>


    </div>

    <div class="one_half last">
      <h3>Nastavi istraživati</h3>
    </div>
 <?php

   $sml_rangiraj = img(array(
        'src'=>'images/assets/fm/sml_rangiraj.png',
        'height'=>'33',
        'class'=>'fade'

        ));

     $sml_prihodi = img(array(
        'src'=>'images/assets/fm/sml_prihodi.png',
        'height'=>'33',
        'class'=>'fade'

        ));


     $sml_uporedi = img(array(
        'src'=>'images/assets/fm/sml_uporedi.png',
        'height'=>'33',
        'class'=>'fade'

        ));


          $sml_tokovi = img(array(
        'src'=>'images/assets/fm/sml_tokovi.png',
        'height'=>'33',
        'class'=>'fade'

        ));

           $sml_pojmovi = img(array(
        'src'=>'images/assets/fm/sml_pojmovi.png',
        'height'=>'33',
        'class'=>'fade'

        ));



   echo form_open('prihodi', array('name'=>'istrazi', 'class'=>'stdform'));

   echo form_hidden('grad', $this->input->post('grad'));
   echo form_hidden('godina', $this->input->post('godina'));
   ?>



            <table id="background-image" style="width:50%;">


            <tbody>
            <tr>
            <td width="60%">Pregledaj prihode za istu opštinu/grad</td>
            <td style="text-align:center;"> <?php echo form_submit('istrazi', 'Istraži'); ?></td>



            </tr>

            <tr>
            <td>Uporedi opštine/gradove prema rashodima</td>
            <td style="text-align:center;"> <?php echo anchor('uporedi', $sml_uporedi); ?>  </td>
            </tr>

            <tr>
            <td>Rangiraj opštine/gradove</td>
            <td style="text-align:center;"> <?php echo anchor('#', $sml_rangiraj); ?> </td>
            </tr>

            <tr>
            <td>Pregledaj tokove novca za drugu opštinu/grad</td>
            <td style="text-align:center;"> <?php echo anchor('info', $sml_tokovi); ?> </td>
            </tr>

             <tr>
            <td>Vidi tumačenje pojmova</td>
            <td style="text-align:center;"> <?php echo anchor('pojmovi', $sml_pojmovi); ?></td>



            </tr>



            </tbody>
            </table>


   <?php


   echo form_close();


     ?>
    <!-- END informacije -->
  </div>
  <br clear="all">
  <?php endif;
  //$this->view_data['series_data'] = json_encode($series_data);
  $this->view_data['series_stanovnik'] = json_encode($series_stanovnik);


  //Chart names
  $ch_title =$this->router->method . " - " . $this->input->post('grad');
  $ch_title =ucwords($ch_title);


  $ch_title2 =/*$this->router->method . " - " . */"Rashod po stanovniku - " . $this->input->post('grad');
  //END chart names
  //
  //control printout for graph data
  // echo "<pre>";
  // print_r($series_data);
  // echo "<pre>";
  // echo $this->view_data['series_data'];




  ?>
    <br clear="all">

</div>


<!-- START JS HIGHCHARTS -->
<!-- Call highchart params with passed values from table search -->


<script type="text/javascript">


var chart1; // globally available
var chart2; // globally available

jQuery(document).ready(function()
{

  chart1 = new Highcharts.Chart({
     chart: {
            renderTo: 'cnt',
            type:'pie',
            width:'600'

         },
         title: {
            text: '<?php echo $ch_title; ?>'
         },

         tooltip: {
                formatter: function() {
                    return '<b>'+ this.point.name +'</b>: '+  Highcharts.numberFormat(this.point.y, 2, '.', ',');
                }
              },



          plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        color: '#000000',
                        connectorColor: '#000000',
                        formatter: function() {
                            return '<b>'+ this.point.name +'</b> ';
                        }
                    }
                }
            },


         series: [{

            data: [
           <?php
            foreach ($series_data as $sdata => $value) {
              echo $value .',';
            }


           ?>


            ]
         }]


  });

  chart2 = new Highcharts.Chart({
     chart: {
        renderTo: 'cnt1',
        type: 'bar',
        width: '300'
     },
     title: {
        text: '<?php echo $ch_title2; ?>'
     },
     xAxis: {
        categories: [<?php echo $this->input->post('godina'); ?>]
     },
     yAxis: {
        title: {
           text: ''
        }
     },
      series: <?php echo $this->view_data['series_stanovnik']; ?>


  });


});
</script>
