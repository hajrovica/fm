<?php
//include header
$this->load->view('includes/header'); ?>

<div id="main_content">

<!-- ECHO page name based on method - second URI segment -->
<h1><?php echo $this->router->method; ?></h1>

<!-- ECHO breadcrumbs - class - method combo -->
<div id="breadcrumbs">Location: <?php echo anchor($this->router->class,$this->router->class) ." - ". $this->router->method; ?></div>

<?php

//ouptut for GCRUD
if (isset($output)){
    echo $output;
}
echo "<hr class=\"sl\">";

//defined Var for function _csvform in MY_Controller //outputs form for CSV upload
if (isset($page)){
    echo $page;
}

//data var for csv upload class - debug functionality
if (isset($upload_data)){
    echo "<pre>";
    print_r($upload_data);
    echo "</pre>";
}

 ?>
<?php
//check for CSV table to show
if ($this->uri->segment(2)=='csv_import'): ?>

            <div class="contenttitle radiusbottom0">
                    <h2 class="table"><span>Csv file content</span></h2>
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
                    <th class="head0">Entitet</th>
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
                            <th class="head0">Entitet</th>
                        </tr>
                    </thead>



            <tbody>
                <?php
                // echo "<pre>";
                // print_r($csvData);

                if ($this->uri->segment(3)=='prihodi'): ?>
                    <?php foreach ($csvData as $field): ?>
                    <tr>
                        <td><?php //echo $field['id'] ?> - </td>
                        <td><?php echo $field['stavka'] ?> </td>
                        <td><?php echo $field['ukupan_iznos'] ?> </td>
                        <td><?php echo $field['procenat'] ?> </td>
                        <td><?php echo $field['prihod_stanovnik'] ?> </td>
                        <td><?php echo $field['grad'] ?> </td>
                        <td><?php echo $field['grupa_prihoda'] ?> </td>
                        <td><?php //echo $field['tip_prihoda'] ?> </td>
                        <td><?php echo $field['godina'] ?> </td>
                        <td><?php echo $field['entitet'] ?> </td>

                    </tr>
                    <?php endforeach ?>
                <?php else: ?>

                    <?php foreach ($csvData as $field): ?>
                    <tr>
                        <td><?php //echo $field['id'] ?> - </td>
                        <td><?php echo $field['stavka'] ?> </td>
                        <td><?php echo $field['ukupan_iznos'] ?> </td>
                        <td><?php echo $field['procenat'] ?> </td>
                        <td><?php echo $field['rashod_stanovnik'] ?> </td>
                        <td><?php echo $field['grad'] ?> </td>
                        <td><?php echo $field['grupa_rashoda'] ?> </td>
                        <td><?php //echo $field['tip_prihoda'] ?> </td>
                        <td><?php echo $field['godina'] ?> </td>
                        <td><?php echo $field['entitet'] ?> </td>

                    </tr>
                    <?php endforeach ?>

                <?php endif ?>

            </tbody>
        </table>
        <?php

        // debug functionality show array
         echo "<hr>csvData   -   " ;

            echo "<pre>";
            print_r($csvData);
            echo "</pre>";


         ?>

 <?php endif ?>

</div>


<?php $this->load->view('includes/footer'); ?>