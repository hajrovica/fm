<?php //$this->load->view('includes/header'); ?>

<!-- ***************************  -->

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
<script src="<?php echo base_url(); ?>js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script src="<?php echo base_url(); ?>js/custom/general.js"></script>
<script src="<?php echo base_url(); ?>js/custom/dashboard.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>js/custom/form.js"></script>


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

<!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<meta charset="UTF-8"></head>

<body class="loggedin">

    <!-- START OF HEADER -->
    <div class="header radius3">
        <div class="headerinner">

            <a href=""><img src="<?php echo base_url(); ?>images/logo.png" alt="" /></a>


            <div class="headright">
                <div class="headercolumn">&nbsp;</div>

            </div><!--headright-->

        </div><!--headerinner-->

    </div><!--header-->
    <!-- END OF HEADER -->

    <!-- START OF MAIN CONTENT -->
    <div class="mainwrapper">
        <div class="mainwrapperinner">
         <?php $this->load->view('includes/main_left'); ?>


        <div class="maincontent noright">
            <div class="maincontentinner">

<!--                 <ul class="maintabmenu">
                    <li class="current"><a href="<?php echo base_url(); ?>dashboard.html">Dashboard</a></li>
                </ul>
 -->
                <!--maintabmenu-->

                <div class="content">

<!-- ****************************** -->


<div id="main_content">
<?php $this->load->view($main_content); ?>
</div>

<hr>

<?php $this->load->view('includes/footer'); ?>