<?php
/**
 * The Header for our theme.
 */
if ( WP_DEBUG && !empty( $_REQUEST['debug'] ) ) {
    if ( 'show' != $_REQUEST['debug'] ) {
        echo '<!-- ';
    }
    esc_html_e( 'Theme File: ' . __FILE__ );
    if ( 'show' != $_REQUEST['debug'] ) {
        echo ' -->';
    }
}
?><!DOCTYPE html>
<!--[if IE 6]>
<html class="ie6" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 7]>
<html class="ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->



<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width" />
    <title><?php wp_title(); ?></title>
    <link rel="profile" href="http://gmpg.org/xfn/11" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="stylesheet" href="http://localhost/fm/css/style.css" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&subset=latin,latin-ext' rel='stylesheet' type='text/css'>


    

<?php
    /**
     * Add some JavaScript to pages with the comment form to support sites with
     * threaded comments (when in use).
     */
    if ( is_singular() && get_option( 'thread_comments' ) )
        wp_enqueue_script( 'comment-reply' );

    /**
     * Always have wp_head() just before the closing </head>
     * tag of your theme, or you will break many plugins, which
     * generally use this hook to add elements to <head> such
     * as styles, scripts, and meta tags.
     */
    wp_head();
    $hTag = apply_filters( 'esssence_title_tag', ( is_home() || is_front_page() )? 'h1' : 'h4' );
?>
</head>

<body <?php body_class(); ?> style="margin:auto;">

<!-- ********************************************************************************* -->

    <div class="header" style="margin:auto; margin-bottom:11px; width:950px;">
        <div class="inner">
<a href="http://localhost/fm/">
                <img alt="logo" src="http://localhost/fm/images/assets/logo.jpg">

</a>
            &nbsp;            <img alt="header" src="http://localhost/fm/images/assets/header.jpg" height="75px">

              <div class="social">
                 <a onclick="window.open('http://www.facebook.com/FiskalniMonitorBiH', '_blank');" href="javascript:void(0);"><img height="40px" alt="" class="fade" src="http://localhost/fm/images/assets/facebook_icon.png"></a><a onclick="window.open('http://localhost/fm/index.php/#', '_blank');" href="javascript:void(0);"><img height="40px" alt="" class="fade" src="http://localhost/fm/images/assets/twitter_icon.png"></a><a onclick="window.open('http://localhost/fm/index.php/#', '_blank');" href="javascript:void(0);"><img height="40px" alt="" class="fade" src="http://localhost/fm/images/assets/mail_icon.png"></a>
              </div>

            <div class="menu">

            <a href="http://localhost/fm/index.php"> POČETNA </a><a id="" href="http://localhost/fm/index.php/fiskalni monitor"> FISKALNI MONITOR? </a><a id="" href="http://localhost/fm/index.php/info"> GDJE NOVAC IDE? </a><a id="" href="http://localhost/fm/index.php/pojmovi"> POJMOVI </a><a id="currentlink" href="http://localhost/fm/index.php/blog">  BLOG </a><a id="" href="http://localhost/fm/index.php/onama"> O NAMA </a><a id="" href="http://localhost/fm/index.php/kontakt"> KONTAKT  </a>
            </div>
        </div>
<div style="background-color:#e4653a;  color:#FFF; padding:3px; padding-left:7px; width:99%; font-family: PT Sans Narrow, Arial; font-weight:normal; font-size:14px; margin-top:163px; height:21px;" class="orange">
         </div>



	 <br clear="all">
    </div>
	


<!-- ********************************************************************************* -->



       
<br clear="all">





    <div id="wrapper" class="hfeed container">
