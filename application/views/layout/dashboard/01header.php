<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dashboard | Starlight Premium Admin Template</title>
<link rel="stylesheet" href="<? echo base_url(); ?>css/style.css" type="text/css" />
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/ie9.css"/>
<![endif]-->

<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/ie8.css"/>
<![endif]-->

<!--[if IE 7]>
    <link rel="stylesheet" media="screen" href="css/ie7.css"/>
<![endif]-->
<script type="text/javascript" src="<? echo base_url(); ?>js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="<? echo base_url(); ?>js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript" src="<? echo base_url(); ?>js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="<? echo base_url(); ?>js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="<? echo base_url(); ?>js/custom/general.js"></script>
<script type="text/javascript" src="<? echo base_url(); ?>js/custom/dashboard.js"></script>
<?php
if (!$css_files) {
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

            <a href=""><img src="<? echo base_url(); ?>images/starlight_admin_template_logo_small.png" alt="" /></a>


            <div class="headright">
                <div class="headercolumn">&nbsp;</div>
                <div id="searchPanel" class="headercolumn">
                    <div class="searchbox">
                        <form action="" method="post">
                            <input type="text" id="keyword" name="keyword" class="radius2" value="Search here" />
                        </form>
                    </div><!--searchbox-->
                </div><!--headercolumn-->
                <div id="notiPanel" class="headercolumn">
                    <div class="notiwrapper">
                        <a href="<? echo base_url(); ?>ajax/messages.php.html" class="notialert radius2">5</a>
                        <div class="notibox">
                            <ul class="tabmenu">
                                <li class="current"><a href="<? echo base_url(); ?>ajax/messages.php.html" class="msg">Messages (2)</a></li>
                                <li><a href="<? echo base_url(); ?>ajax/activities.php.html" class="act">Recent Activity (3)</a></li>
                            </ul>
                            <br clear="all" />
                            <div class="loader"><img src="<? echo base_url(); ?>images/loaders/loader3.gif" alt="Loading Icon" /> Loading...</div>
                            <div class="noticontent"></div><!--noticontent-->
                        </div><!--notibox-->
                    </div><!--notiwrapper-->
                </div><!--headercolumn-->
                <div id="userPanel" class="headercolumn">
                    <a href="" class="userinfo radius2">
                        <img src="<? echo base_url(); ?>images/avatar.png" alt="" class="radius2" />
                        <span><strong>Justin Meller</strong></span>
                    </a>
                    <div class="userdrop">
                        <ul>
                            <li><a href="">Profile</a></li>
                            <li><a href="">Account Settings</a></li>
                            <li><a href="<? echo base_url(); ?>index.html">Logout</a></li>
                        </ul>
                    </div><!--userdrop-->
                </div><!--headercolumn-->
            </div><!--headright-->

        </div><!--headerinner-->
    </div><!--header-->
    <!-- END OF HEADER -->