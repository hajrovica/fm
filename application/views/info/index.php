<script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-ui-1.8.16.custom.min.js"></script>

<?php $this->load->view('includes/right_div'); ?>
<div class="wh" style="width:75%;">
   <br> <h2>Gdje novac ide?</h2>
<div style="text-align:center;  font-family: PT Sans Narrow; font-size:19px;">
  <br>  Fiskalni monitor građanima omogućava:


            <br>pregled prihoda i rashoda opština i gradova u BiH prema određenim budžetskim stavkama;<br>

            upoređivanje rashoda opština i gradova;<br>

            rangiranje opština/gradova na osnovu određenih stavki rashoda;<br>

            vizualizaciju podataka.<br>


</div> <br>  <h4 style="text-align:center;">Izaberite neku od ponuđenih opcija za pregled budžetskih podataka opština i gradova u BiH.</h4>

    <?php

    $prihodi = img(array(
        'src'=>'images/assets/fm/prihodi.jpg',
        'height'=>'200',
        'class'=>'fade'

        ));

    $rashodi = img(array(
        'src'=>'images/assets/fm/rashodi.jpg',
        'height'=>'200',
        'class'=>'fade'

        ));

    $opstine = img(array(
        'src'=>'images/assets/fm/opstine.jpg',
        'height'=>'200',
        'class'=>'fade'

        ));

    $uporedi = img(array(
        'src'=>'images/assets/fm/uporedi.jpg',
        'height'=>'200',
        'class'=>'fade'

        ));



    echo "<br><br>";
    echo anchor('prihodi', $prihodi);
    echo nbs(3);
    echo anchor('rashodi', $rashodi);
    echo "<br><br>";
    echo anchor('uporedi', $uporedi);
    echo nbs(3);
    echo anchor('#', $opstine);


     ?>

<!--     <div class="widgetgrid">


    <br clear="all">

    <div class="content">
        <br clear="all">
        <ul class="widgetlist" style="width:600px;">
                            <li><a href="<?php echo site_url('prihodi') ?>" class="prihodi default"> </a></li>
                            <li><a href="<?php echo site_url('rashodi') ?>" class="rashodi"> </a></li>
                             <li><a href="./#" class="uporedi"> </a></li>
                            <li><a href="./#" class="rangiraj"> </a></li>
        </ul>

        <br clear="all">
    </div>


    </div> -->
</div>

<script type="text/javascript">
jQuery('.widgetlist a').hover(function(){
        jQuery(this).switchClass('default', 'hover');
    },function(){
        jQuery(this).switchClass('hover', 'default');
    });
</script>
