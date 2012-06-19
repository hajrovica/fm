<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo base_url();?>">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Fiskalni monitor BiH</title>
<link rel="stylesheet" href="<?php echo base_url(); ?>css/style.css" type="text/css" />
<?php echo link_tag('favicon.ico', 'shortcut icon', 'image/ico'); ?>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/ie9.css"/>
<![endif]-->

<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/ie8.css"/>
<![endif]-->

<!--[if IE 7]>
    <link rel="stylesheet" media="screen" href="css/ie7.css"/>
<![endif]-->

<!-- Google fonts include  -->
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

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

<!-- FaceBok code include -->
    <div id="fb-root"></div>
        <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
<!-- FaceBok code include END -->

    <!-- Define icons for social -->
<?php
    $fb = img(array('src'=>'images/assets/facebook_icon.png','height'=>'40px', 'class'=>'fade'));
    $tw = img(array('src'=>'images/assets/twitter_icon.png','height'=>'40px', 'class'=>'fade'));
    $mail = img(array('src'=>'images/assets/mail_icon.png','height'=>'40px', 'class'=>'fade'));

     ?>

    <!-- Define icons for socialEND -->

    <!-- START OF HEADER -->

    <div class="header">
        <div class="inner">
<a href="<?php echo base_url(); ?>">
                <img src="<?php echo base_url(); ?>images/assets/logo.jpg" alt="logo" />

</a>
            <?php echo nbs(1); ?>
            <img src="<?php echo base_url(); ?>images/assets/header.jpg" alt="header" />

              <div class="social">
                 <?php
                    echo anchor_popup('#', $fb);
                    echo anchor_popup('#', $tw);
                    echo anchor_popup('#', $mail);
                ?>

              </div>

            <div class="menu">

            <?php
            //get current link
            $linkseg = $this->uri->segment(1);
            //decllare value for id
            $currentLink = 'currentlink';

            //define variables to prevent errrors
            $home = null;
            $fm = null;
            $info = null;
            $pojmovi = null;
            $blog = null;
            $onama = null;
            $kontakt = null;

            //build switch statement to declare values of variables
            switch ($linkseg) {
                case 'fiskalni%20monitor':
                    $fm = $currentLink;
                    break;

                    case 'info':
                        $info = $currentLink;
                        break;

                    case 'pojmovi':
                        $pojmovi = $currentLink;
                        break;


                    case 'blog':
                        $blog = $currentLink;
                        break;

                    case 'onama':
                        $onama = $currentLink;
                        break;

                    case 'kontakt':
                        $kontakt = $currentLink;
                        break;

                    case 'prihodi':
                        $info = $currentLink;
                        break;

                    case 'rashodi':
                        $info = $currentLink;
                        break;

                default:
                    $home = $currentLink;
                    break;
            }


            //build menu with id depending onprevious switch
            echo anchor('', ' POČETNA ', array('id'=>$home));
            echo anchor('fiskalni monitor', ' FISKALNI MONITOR? ', array('id'=>$fm));
            echo anchor('info', ' GDJE NOVAC IDE? ' , array('id'=>$info));
            echo anchor('pojmovi', ' POJMOVI ', array('id'=>$pojmovi));
            echo anchor('blog', '  BLOG ', array('id'=>$blog));
            echo anchor('onama', ' O NAMA ', array('id'=>$onama));
            echo anchor('kontakt', ' KONTAKT  ', array('id'=>$kontakt));


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
