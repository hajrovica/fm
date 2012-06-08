<script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-ui-1.8.16.custom.min.js"></script>


<div class="gry">
    <h1 id="<?php echo $this->router->method; ?>">Gdje novac ide?</h1>
    <div class="widgetgrid">


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


    </div>
</div>

<script type="text/javascript">
jQuery('.widgetlist a').hover(function(){
        jQuery(this).switchClass('default', 'hover');
    },function(){
        jQuery(this).switchClass('hover', 'default');
    });
</script>
