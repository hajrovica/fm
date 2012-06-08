<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo base_url();?>">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Fiskalni monitor BiH</title>
<link rel="stylesheet" href="<?php echo base_url(); ?>css/style.css" type="text/css" />
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/ie9.css"/>
<![endif]-->

<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/ie8.css"/>
<![endif]-->

<!--[if IE 7]>
    <link rel="stylesheet" media="screen" href="css/ie7.css"/>
<![endif]-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<!-- HighCharts includes -->
    <script type="text/javascript" src="<?php echo base_url(); ?>public/jquery.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>public/highcharts/js/highcharts.js"></script>
<!-- END HIGH CHARTS -->


<!-- INCLUDES FOR GROCERY CRUD -->
<?php
if (!isset($css_files)) {
}else{

foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />

<?php endforeach; ?>
<?php foreach($js_files as $file): ?>

    <script src="<?php echo $file; ?>"></script>
<?php endforeach;
# code...
}
?>
<!-- GCRUD END -->


<!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<meta charset="UTF-8"></head>

<body>

    <!-- START OF HEADER -->

    <div class="header">
        <div class="inner">
            <img src="<?php echo base_url(); ?>images/assets/logo.jpg" alt="logo" />
            <?php echo nbs(1); ?>
            <img src="<?php echo base_url(); ?>images/assets/header.jpg" alt="header" />
            <div class="menu">
            <?php
            echo anchor('', ' POČETNA ');
            echo anchor('fm', ' FISKALNI MONITOR? ');
            echo anchor('info', ' GDJE NOVAC IDE? ');
            echo anchor('novosti', '  NOVOSTI ');
            echo anchor('pojmovi', ' POJMOVI ');
            echo anchor('onama', ' O NAMA ');
            echo anchor('kontakt', ' KONTAKT  ');


            ?>

            </div>
        </div>
        <br clear="all"/>
    </div><!--header-->
    <!-- END OF HEADER -->

    <!-- START OF MAIN CONTENT -->
    <div class="content">


<!-- START MENI -->

<!-- END MENI -->
 <!-- <ul class="buttonlist">
                    <li><?php echo anchor('/', 'POČETNA', 'class="btn"'); ?></li>
                    <li><?php echo anchor('fm', 'FISKALNI MONITOR?', 'class="btn"'); ?></li>
                    <li><?php echo anchor('info', 'GDJE NOVAC IDE?', 'class="btn"'); ?></li>
                    <li><?php echo anchor('#', 'TEME U FOKUSU', 'class="btn"'); ?></li>
                    <li><?php echo anchor('novosti', 'NOVOSTI', 'class="btn"'); ?></li>
                    <li><?php echo anchor('pojmovi', 'POJMOVI', 'class="btn"'); ?></li>
                    <li><?php echo anchor('onama', 'O NAMA', 'class="btn"'); ?></li>
                    <li><?php echo anchor('kontakt', 'KONTAKT', 'class="btn"'); ?></li>

                </ul> -->
<!--     <hr class="sl" > -->
