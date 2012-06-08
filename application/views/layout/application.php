<b>Header area </b><br>
| <?=anchor('', 'Home') ?>
<div id="msg"><?=isset($message) ? $message : '' ?></div>
<hr>
<?=$yield; ?>

<hr>
This is our footer.
<?php echo $this->benchmark->elapsed_time('blog_index', 'blog_end'); ?>