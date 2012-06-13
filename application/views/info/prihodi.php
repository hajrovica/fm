
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

<div class="wh">
  <h1 id="<?php echo $this->router->method; ?>">Prihodi</h1>
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
  $series_stanovnik=array();

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
             $set[$record['grupa_prihoda']][] = $record;
          }


          // echo "<pre>";
          // print_r($set);
          // echo "</pre>";
  ?>
                 <div class="contenttitle radiusbottom0">
                      <h2 class="table"><span>Prihodi
                          <?php echo " | Grad:".$this->input->post('grad')."-".$this->input->post('godina'); ?></span></h2>
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
                              <th class="head0">Ukupan iznos</th>
                              <th class="head1">Procenat</th>
                              <th class="head0">Prihod po stanovniku</th>

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
                      $prih_stanovnik = null;
                      $td_total=null;
                      $tot_values = null;
                      $tot_stanovnik = null;
                      //$main_total = null;
                      echo "<tbody class=\"sadrzaj\">";
                      foreach ($records as $record) {

                      echo tabelaSadrzaj($record, $group);

                      //calculate subtotals - group totals
                      $tot += $record['ukupan_iznos'];
                      $procenat += $record['procenat'];
                      $prih_stanovnik += $record['prihod_stanovnik'];


                      }


                      $td_total .="<tr class=\"$group"." total\">";
                      //$td_total .="<td>!!!!</td>";
                      $td_total .="<td colspan=\"2\"><h4>Total:</h4></td>";
                      $td_total .="<td><h4>".$tot."</h4></td>";
                      $td_total .="<td><h4>".$procenat."</h4></td>";
                      $td_total .="<td><h4>".$prih_stanovnik."</h4></td>";
                      $td_total .="</tr>";
                      echo $td_total;
                      echo "</tbody>";

                      //create array of totals for graph
                      //$tot_values[]=$tot;
                      $tot_stanovnik[]=$prih_stanovnik;
                      //calculate main table totals
                      $main_total += $tot;
                      $main_proc += $procenat;
                      $main_ps += $prih_stanovnik;

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
                      <th class="head0">Total:<?php echo $main_total; ?></th>
                      <th class="head1"><?php echo $main_proc; ?></th>
                      <th class="head0"><?php echo $main_ps; ?></th>

                  </tr>
              </tfoot>
          </table>
  <br clear="all">
  <div id="charts" style="text-align:center;">
    <!-- START CHARTS by total and  prihod_stanovnik -->
    <div id="cnt" style="float:left;">1!!!</div>
    <div id="cnt1" style="margin-left:470px;">1!!!</div>
    <!-- END CHARTS -->

    <br clear="all">
    <hr class="sl">
    <br clear="all">

    <!-- START Informacije opstina i meni -->
    <div class="one_half">
      <?php foreach ($opcina_arr as $opcine => $value):?>
      <h3>Informacije o opštini <?php echo $value->opcina; ?></h3>
        <p>
          <b> <?php echo $value->info; ?> </b>
        </p>
      <?php endforeach ?>


    </div>

    <div class="one_half last">
      <h3>Nastavi istraživati</h3>
    </div>
    <!-- END informacije -->
  </div>
  <br clear="all">
  <!-- $series_data[] = array('name'=>'Alastair', 'data'=>array(3,6,9)); -->
  <?php endif;


  //obsoltete for pie charts see comment further down
  // $this->view_data['series_data'] = json_encode($series_data);

  // $this->view_data['series_stanovnik'] = json_encode($series_stanovnik);

  $ch_title =$this->router->method . " - " . $this->input->post('grad');
  $ch_title =ucwords($ch_title);


  $ch_title2 =/*$this->router->method . " - " . */$this->input->post('grad') . "- prihod po stanovniku";
  $ch_title2 =ucwords($ch_title2);

  //control printout for graph data
  // echo "<pre>";
  // print_r($series_stanovnik);
  echo "<pre>";
  //Evaded JSON encoded arays needed for pie chart because of other data structure
  // sent regular array with preformated values :P
  print_r($series_data);
     // foreach ($series_data as $sdata => $value) {
     //          echo $value .',';
     //        }

   ?>
    <br clear="all">

</div>


<script type="text/javascript">


var chart1; // globally available

jQuery(document).ready(function()
{

  chart1 = new Highcharts.Chart({
     chart: {
            renderTo: 'cnt',
            type:'pie'

         },
         title: {
            text: '<?php echo $ch_title; ?>'
         },

         tooltip: {
                formatter: function() {
                    return '<b>'+ this.point.name +'</b>: '+ this.point.y;
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
            name: 'Jane',
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
        type: 'column',
        width: '400'
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
