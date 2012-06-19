<?php $this->load->view('includes/right_div'); ?>
<div class="wh" style="width:75%;">
<br>

<?php


if (isset($page)) {
    echo "$page";
}
if (isset($sent_err)) {
    echo "$sent_err";
}

if (validation_errors()) {
    $val=null;
    $err = validation_errors();
    $val .= '<div class="notification msgerror">'.
    '<a class="close"></a>'.
    "<p>$err! - msgerror</p>".
'</div>';

echo $val;
}

if (isset($sent_ok)) {
    echo "<br clear=\"all\"> $sent_ok";
}
else{

$img = img(array(
            'src'=>'images/assets/info.png'


            ));


echo $img;

  ?>


<br><br><br>

<div class="one_third" style="margin:7px; padding:0px 0px 0px 1px">

                        <h2 class="form">Kontakt informacije</h2>

        <p>
            <br>Projekat „Fiskalni monitor u BiH“ <br>
            Sarajevska škola za nauku i tehnologiju<br>
            Bistrik 7<br>
            71000 Sarajevo <br>
            Bosna i Hercegovina

        </p>
    </div>

      <div class="" style="width:60%; float:right; margin:7px;">

        <p>
            <?php  $this->load->view('stranice/_kontakt'); ?>

        </p>
    </div>





  <?php
 }




?>


</div>