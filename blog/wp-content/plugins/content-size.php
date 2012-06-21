{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}} 
{\*\generator Msftedit 5.41.15.1507;}\viewkind4\uc1\pard\f0\fs20 /*\par 
Plugin Name: Limit Posts\par 
Plugin URI: http://labitacora.net/comunBlog/limit-post.phps\par 
Description: Limits the displayed text length on the index page entries and generates a link to a page to read the full content if its bigger than the selected maximum length. \par 
Usage: the_content_limit($max_charaters, $more_link)\par 
Version: 1.1\par 
Author: Alfonso Sanchez-Paus Diaz y Julian Simon de Castro\par 
Author URI: http://labitacora.net/\par 
License: GPL\par 
Download URL: http://labitacora.net/comunBlog/limit-post.phps\par 
Make: \par 
In file index.php \par 
replace the_content() \par 
with the_content_limit(1000, "more")\par 
*/\par 
\par 
function the_content_limit($max_char, $more_link_text = '(more...)', $stripteaser = 0, $more_file = '') \{\par 
$content = get_the_content($more_link_text, $stripteaser, $more_file);\par 
$content = apply_filters('the_content', $content);\par 
$content = str_replace(']]>', ']]>', $content);\par 
\par 
if (strlen($_GET['p']) > 0) \{\par 
echo $content;\par 
\}\par 
else if ((strlen($content)>$max_char) && ($espacio = strpos($content, " ", $max_char ))) \{\par 
$content = substr($content, 0, $espacio);\par 
$content = $content;\par 
echo $content;\par 
echo ""."..."."";\par 
echo "

";\par 
echo "".$more_link_text."
";\par 
\}\par 
else \{\par 
echo $content;\par 
\}\par 
\}\par 
\par 
?>\par 
} 
