<!-- START of right DIV -->
   <?php

   $dImg = img(array(
        'src'=>'images/assets/desnaslika.jpg',
        'width'=>'100%'

        ));


$istrazi = null;
$fokus = null;
$dogadjaj = null;
$class='icons';

$istrazi = img(array(
    'src'=>'images/assets/ikona1.png',
    'class'=>$class,
    'width'=>'50px'
    ));

$fokus = img(array(
    'src'=>'images/assets/ikona2.png','class'=>$class,
    'width'=>'50px'
    ));

$dogadjaj = img(array(
    'src'=>'images/assets/ikona3.png','class'=>$class,
    'width'=>'50px'
    ));

$blog = img(array(
    'src'=>'images/assets/blog.png','class'=>$class,
    'width'=>'50px'
    ));

    ?>

    <div class="right" style="">
        <?php //echo anchor('#', $dImg); ?>
        <div style="height:3px; background-color:#FFF;"></div>


        <br>
        <?php
        echo $blog;
        echo "<br>";
        echo "<strong>NOVOSTI <br>SA BLOGA</strong>";
        echo "<br>";

        echo $istrazi;
        echo "<br>";
        echo "<strong>ISTRAŽI</strong>";
        echo "<br>";

        echo $fokus;
        echo "<br>";
        echo "<strong>U FOKUSU</strong>";
        echo "<br>";

        echo $dogadjaj;
        echo "<br>";
        echo "<strong>PREDSTOJEĆI <br>DOGAĐAJI</strong>";
        echo "<br>";


         ?>
          <br>
          <div class="fb-like-box" data-href="http://www.facebook.com/SarajevoSevdahFest" data-width="190" data-colorscheme="" data-show-faces="true" data-stream="false" data-header="true"></div>


    </div>

    <!-- END OF RIGHT DIV -->
    <!-- START ORANGE DIV BREADCRUMBS -->
    <div class="orange" style="background-color:#e4653a; width:80%; color:#FFF; padding:3px; padding-left:7px; margin-left:11px;">
        Vi ste ovdje: <?php echo strtoupper($this->uri->segment(1)); ?></div>
    <!-- END ORANGE DIV -->