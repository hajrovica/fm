<script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-ui-1.8.16.custom.min.js"></script>


<div class="wh">

    <?php

    $prihodi = img(array(
        'src'=>'images/assets/fm/prihodi.jpg',
        // 'height'=>'385',
        'class'=>'fade'

        ));
    $rashodi = img(array(
        'src'=>'images/assets/fm/rashodi.jpg',
        // 'height'=>'385',
        'class'=>'fade'

        ));
    echo "<br><br clear=\"all\">";
    echo anchor('prihodi', $prihodi);
    echo nbs(3);
    echo anchor('rashodi', $rashodi);

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
