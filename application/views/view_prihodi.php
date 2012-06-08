

<h1>Prihodi NEW</h1>
<?php if ($this->session->flashdata('message')): ?>
<br><br><div class="error"> <?=$this->session->flashdata('message')?> </div>
<?php endif;

 ?>
<br><br><br>
<?php $this->load->view('info/_form1');

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
                    echo "<tr class=\"main\"><td>-</td>
                              <td colspan=\"4\">
                                <h3>$group</h3>
                              </td>
                          </tr>";

                    //declare vars to prevent errors and destroy values for next group
                    $tot = null;
                    $procenat = null;
                    $prih_stanovnik = null;
                    $td_total=null;
                    //$main_total = null;
                    echo "<tbody class=\"grupa\">";
                    foreach ($records as $record) {

                    echo tabelaSadrzaj($record, $group);

                    //calculate subtotals - group totals
                    $tot += $record['ukupan_iznos'];
                    $procenat += $record['procenat'];
                    $prih_stanovnik += $record['prihod_stanovnik'];


                    }
                    echo "</tbody>";

                    $td_total .="<tr class=\"$group"." total\">";
                    //$td_total .="<td>!!!!</td>";
                    $td_total .="<td colspan=\"2\"><h4>Total:</h4></td>";
                    $td_total .="<td><h4>".$tot."</h4></td>";
                    $td_total .="<td><h4>".$procenat."</h4></td>";
                    $td_total .="<td><h4>".$prih_stanovnik."</h4></td>";
                    $td_total .="</tr>";
                    echo $td_total;

                    //calculate main table totals
                    $main_total += $tot;
                    $main_proc += $procenat;
                    $main_ps += $prih_stanovnik;

                    //release table part rendered for next group
                    $td_total = 0;

                    //echo $data['tabela'];


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
<div id="cnt" style="width: 300px;"></div>

<?php endif; ?>



<script type="text/javascript">

var chart1; // globally available

jQuery(document).ready(function()
{

  chart1 = new Highcharts.Chart({
     chart: {
        renderTo: 'cnt',
        type: 'pie',
        inverted: false
     },
     title: {
        text: 'Fruit Consumption'
     },
     xAxis: {
        categories: ['Apples', 'Bananas', 'Oranges']
     },
     yAxis: {
        title: {
           text: 'Fruit eaten'
        }
     },
      series: [{
            name: 'Jane',
            data: [1, 0, 4]
         }]


  });




});
</script>