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

 <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/ddrop.js"></script>

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
  <h1>Uporedi</h1> <br>
  <h3>Uporedite rashode opštine/grada </h3>
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




   ?>


<br clear="all"> <br>


  <div id="charts" style="text-align:center;">
    <!-- START CHARTS by total and  prihod_stanovnik -->
    <div id="cnt" style=""> </div>

    <!-- END CHARTS -->

  </div>





                               <div class="one_half last">

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


      $grey = img(array(
        'src'=>'images/assets/fm/grey.png',
        'height'=>'33',
        'class'=>'fade'

        ));

          if ($_POST) {





   ?>



            <table id="background-image" style="width:30%; float:right;">


            <tbody>


             <tr>
            <td style="vertical-align:middle; text-align:center;">Nastavi istraživati</td>
            <td style="text-align:center;"> <?php echo anchor('info', $sml_pojmovi); ?></td>



            </tr>



            </tbody>
            </table>


   <?php


 }


     ?>
    <!-- END informacije -->
  </div>
  <br clear="all">







</div>



<script type="text/javascript">

var chart2; // globally available

jQuery(document).ready(function()
{

chart2 = new Highcharts.Chart({
            chart: {
                renderTo: 'cnt',
                type: 'column'
            },
            title: {
                text: 'Poređenje opština/gradova'
            },
            subtitle: {
                text: 'Gradovi: <?php echo "$grad1, $grad2 i $grad3" ?>'
            },
            xAxis: {
                categories: [
                 '<?php  echo $this->input->post('godina'); ?>'

                ],
                labels: {
                    rotation: -45,
                    align: 'right',
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '<?php echo $this->input->post('grupa'); ?>'
                }
            },
            legend: {
                layout: 'vertical',
                backgroundColor: '#FFFFFF',
                align: 'left',
                verticalAlign: 'top',
                x: 100,
                y: 70,
                floating: true,
                shadow: true
            },
            tooltip: {
                formatter: function() {
                    return ''+
                        Highcharts.numberFormat(this.point.y, 2, '.', ',') +' KM';
                }
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
                series: [{
                name: '<?php echo $grad1; ?>',
                data: [<?php echo $sum1; ?>],
                                  dataLabels: {
                                  enabled: true,
                                  rotation: -45,
                                  color: '#FFFFFF',
                                  align: 'right',
                                  x: -10,
                                  y: 50,
                                  formatter: function() {
                                      return Highcharts.numberFormat(this.point.y, 2, '.', ',') +' KM';
                                  },
                                  style: {
                                      fontSize: '13px',
                                      fontFamily: 'Verdana, sans-serif'
                                  }
                              }

            }, {
                name: '<?php echo $grad2; ?>',
                data: [<?php echo $sum2; ?>],
                                 dataLabels: {
                                  enabled: true,
                                  rotation: -45,
                                  color: '#FFFFFF',
                                  align: 'right',
                                  x: -10,
                                  y: 50,
                                  formatter: function() {
                                      return Highcharts.numberFormat(this.point.y, 2, '.', ',') +' KM';
                                  },
                                  style: {
                                      fontSize: '13px',
                                      fontFamily: 'Verdana, sans-serif'
                                  }
                              }

            }, {
                name: '<?php echo $grad3; ?>',
                data: [<?php echo $sum3; ?>],
                                dataLabels: {
                                    enabled: true,
                                    rotation: -45,
                                    color: '#FFFFFF',
                                    align: 'right',
                                    x: -10,
                                    y: 50,
                                    formatter: function() {
                                        return Highcharts.numberFormat(this.point.y, 2, '.', ',') +' KM';
                                    },
                                    style: {
                                        fontSize: '13px',
                                        fontFamily: 'Verdana, sans-serif'
                                    }
                                }

            }]
        });

});
</script>
<script type="text/javascript">$("#uporedi").dynamicDropdown();</script>