    <!-- START OF HEADER WITH BODY PART-->
    <?php $this->load->view('layout/dashboard/header'); ?>
    <!-- END OF HEADER WITH BODY PART -->


    <!-- START OF MAIN CONTENT -->
    <div class="mainwrapper">
        <div class="mainwrapperinner">
        <?php
        //just to check for user while developing
        $user = 1;
        if (!$this->user) {$this->load->view('layout/dashboard/main_left');}
        //$this->load->view('layout/dashboard/main_left'); ?>
        <div class="maincontent noright" <?php if ($this->user) {?> style="margin:0;" <?php } ?>>

            <?
          /*  if (!$output) {
                echo $yield;
            }else{

                echo $output;
            }*/

            //START MESSAGES spitout messages based on are tehere any Vars set
            echo $msgblock = (isset($msgblock)) ? $msgblock : "" ;
            echo $error = (isset($error)) ? $error : "" ;
            //echo $alert = (isset($alert)) ? $alert : "" ;
            //END MESAGES

            // main controller Yield var display, output from grocery CRUD moved to individual views
            echo $yield;
            ;




            //echo "<hr>msgblock" . $msgblock;
            //echo "<hr>error"; print_r($error);
            //echo "<hr>Alert" . $page;


            //chect to show data about uploaded file
            if ($this->uri->segment('2')=='csv_upload') {
             foreach ($upload_data as $item => $value):?>
            <li><?php echo $item;?>: <?php echo $value;?></li>
            <?php endforeach;
            }

            //check for CSV table to show
           if ($this->uri->segment(2)=='csv'): ?>

            <div class="contenttitle radiusbottom0">
                    <h2 class="table"><span>Csv file content1</span></h2>
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



             <tfoot>
                <tr>
                    <th class="head0">ID</th>
                    <th class="head1">Stavka</th>
                    <th class="head0">Ukupan iznos</th>
                    <th class="head1">Procenat</th>
                    <th class="head0">Prihod po stanovniku</th>
                    <th class="head1">Grad</th>
                    <th class="head0">Grupa</th>
                    <th class="head1">Tip</th>
                    <th class="head0">Godina</th>
                </tr>
            </tfoot>

            <thead>
                        <tr>
                            <th class="head0">ID</th>
                            <th class="head1">Stavka</th>
                            <th class="head0">Ukupan iznos</th>
                            <th class="head1">Procenat</th>
                            <th class="head0">Prihod po stanovniku</th>
                            <th class="head1">Grad</th>
                            <th class="head0">Grupa</th>
                            <th class="head1">Tip</th>
                            <th class="head0">Godina</th>
                        </tr>
                    </thead>



            <tbody>
                <?php foreach ($csvData as $field): ?>
                    <tr>
                        <td><?php echo $field['id'] ?> - </td>
                        <td><?php echo $field['stavka'] ?> </td>
                        <td><?php echo $field['ukupan_iznos'] ?> </td>
                        <td><?php echo $field['procenat'] ?> </td>
                        <td><?php echo $field['prihod_stanovnik'] ?> </td>
                        <td><?php echo $field['grad'] ?> </td>
                        <td><?php echo $field['grupa_prihoda'] ?> </td>
                        <td><?php echo $field['tip_prihoda'] ?> </td>
                        <td><?php echo $field['godina'] ?> </td>

                    </tr>
                <?php endforeach ?>

            </tbody>
        </table>
        <?php
         echo "<hr>csvData   -   " ;

            echo "<pre>";
            print_r($csvData);
            echo "</pre>";


         ?>

 <?php endif ?>




    <!-- START OF FOOTER -->
    <?php $this->load->view('layout/dashboard/footer'); ?>
    <!-- END OF FOOTER -->