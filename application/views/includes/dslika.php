<!-- START of right DIV -->
   <?php

   $dImg = img(array(
        'src'=>'images/assets/desnaslika.jpg',
        'width'=>'100%'

        ));

    ?>


    <?php
    if (!$_POST) {
        ?>
            <div class="right" style="">
        <?php //echo anchor('#', $dImg); ?>




        <?php
        echo anchor('stranice/ifgraph', $dImg);


         ?>
          <br>


    </div>



        <?php
    }

     ?>

    <!-- END OF RIGHT DIV -->
