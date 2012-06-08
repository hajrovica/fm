<div class="content gry">
<h1 id="<?php echo $this->router->method; ?>">Kontaktirajte nas</h1><br>

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


  ?>
<br clear="all">




<div class="one_third" style="margin:7px; padding:0px 0px 0px 1px">
         <div class="contenttitle">
                        <h2 class="form"><span>Kontakt informacije</span></h2>
        </div><!--contenttitle-->
        <p>
            <br>Projekat „Fiskalni monitor u BiH“ <br>
            Sarajevska škola za nauku i tehnologiju<br>
            Bistrik 7<br>
            71000 Sarajevo <br>
            Bosna i Hercegovina

        </p>
    </div>

      <div class="" style="width:65%; clear:right; float:right; margin:7px;">

        <p>
            <?php  $this->load->view('stranice/_kontakt'); ?>

        </p>
    </div>

<br clear="all">


  <?php
 }




?>


