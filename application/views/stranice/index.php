<div class="wh">
    <?php
    $this->load->helper('html');
    //define vars
    $dImg = null;
    $gImg=null;


    $gImg = img(array(
        'src'=>'images/assets/glavnaslika.jpg',
        'height'=>'385'

        ));


    $dImg .= img(array(
        'src'=>'images/assets/desnaslika.jpg',
        'height'=>'385'

        ));

    echo anchor('novac', $gImg) . nbs(1) . anchor('stranice/ifgraph', $dImg);

     ?>



</div>
<br clear="all">



<?php
$ic1 = null;
$ic2 = null;
$ic3 = null;
$class='icons';

$ic1 = img(array(
    'src'=>'images/assets/ikona1.png',
    'class'=>$class,
    'width'=>'70px'
    ));

$ic2 = img(array(
    'src'=>'images/assets/ikona2.png','class'=>$class,
    'width'=>'60px'
    ));

$ic3 = img(array(
    'src'=>'images/assets/ikona3.png','class'=>$class,
    'width'=>'70px'
    ));
$ic4 = img(array(
    'src'=>'images/icons/racun.jpg','class'=>$class,
    'width'=>'50px',
    'style'=>'float:left; margin-right:7px;'
    ));

 ?>


<div class="gry">
    <div class="one_third">
        <br><?php echo anchor('info', $ic1); ?>
        <div>
            <h4>ISTRAŽI</h4>
            <br>
            <hr>

               <p>
                <h4>Gdje novac ide?</h4>
                <?php echo anchor('info', $ic4); ?>
                Pregledaj strukturu prihoda i rashoda, saznaj kako se ubiru prihodi i kako se troši tvoj novac u opštinama i gradovima. Analiziraj razlike u trošenju novca i rangiraj troškove opština i gradova na osnovu različitih budžetskih stavki.
                 <?php  echo anchor('info', 'Počni istraživati ...') ?>
            </p>

        </div>

    </div>

    <div class="one_third">
        <br>
        <?php echo anchor('fokus', $ic2); ?>
        <div>
                <h4>U FOKUSU</h4>
                <br>
                <hr>

        <p><h4>Javna dostupnost lokalnih budžeta</h4>
Kao rezultat istraživačkog projekta “Procjena budžetske transparentnosti u općinama u Bosni i Hercegovini”, koji je podržao Fond otvoreno društvo BiH, Centar za društvena istraživanja Analitika objavio je analitički sažetak pod nazivom „Javna dostupnost lokalnih budžeta: Kako građanima BiH olakšati pristup budžetskim dokumentima lokalne uprave?“ Izvještaj možete pogledati <?php echo anchor_popup('http://www.analitika.ba/publikacije/javna-dostupnost-lokalnih-budzeta', 'ovdje...'); ?>
</p>

        </div>
    </div>
    <div class="one_third last">
        <br><?php echo $ic3; ?>
        <div>
                <h4>DOGAĐAJI</h4><br><hr>

         <ul class="activitylist">
        <li class="alert"><a href=""><b><i>Utorak 5.6.2012 u 17:00 sati</i></b><br>
            Predavanje na temu “Budžetski sistem u BiH”, <br>
            prof. Goran Mirascic. Lokacija: SSST, Sarajevo.</a></li>
        <li class="alert">
            <a href=""><b><i>Srijeda 6.6.2012 u 12:00 sati</i></b><br>
                Studentska kampanja: „Tiče nas se kako se naš novac troši!“. <br>
                Lokacija: Ulica Titova, Sarajevo.</a>
        </li>
        </ul>

        </div>
    </div>

<br clear="all">
</div>


