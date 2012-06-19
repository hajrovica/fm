<script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-ui-1.8.16.custom.min.js"></script>

<?php $this->load->view('includes/right_div'); ?>
<div class="wh" style="width:75%;">
<div>
    Fiskalni monitor građanima omogućava:
    <ul>
        <li>
            pregled prihoda i rashoda opština i gradova u BiH prema određenim budžetskim stavkama;<br>
        </li>
        <li>
            upoređivanje rashoda opština i gradova;<br>
        </li>
        <li>
            rangiranje opština/gradova na osnovu određenih stavki rashoda;<br>
        </li>
        <li>
            vizualizaciju podataka;
        </li>

    </ul>

    Izaberite neku od ponuđenih opcija za pregled budžetskih podataka opština i gradova u BiH.</div>

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
    echo anchor('#', $opstine);
    echo nbs(3);
    echo anchor('#', $uporedi);

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
