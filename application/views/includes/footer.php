    <hr class="sl">


<div class="wh">

    <?php

    $img = img(array(
            'src'=>'images/assets/info.png'


            ));

        echo $img;
    ?>

</div>


<div class="gry">
        <div class="one_third" style="text-align: left;">
          <?php

                $img = img(array(
                        'src'=>'images/assets/crnilogo.png',
                        'class'=>'icons',
                        'style'=>'float:left;'


                        ));

                    echo $img;

                ?>
        &copy; Copyright SSST 2011 <br> Sva prava pridržana.
        </div>


        <div class="one_third">
            <?php echo nbs(1); ?>
        </div>

        <div class="one_third last">
            <?php
            $fb = img(array('src'=>'images/assets/facebook_icon.png'));
            $tw = img(array('src'=>'images/assets/twitter_icon.png'));
            $mail = img(array('src'=>'images/assets/mail_icon.png'));

             echo anchor_popup('#', $fb);
             echo anchor_popup('#', $tw);
             echo anchor_popup('#', $mail);

             ?>
        </div>


        <br clear="all">
    </div>



<div class="gry" style="text-align: left; vertical-align: middle; margin:0px; margin-top:3px;">

<?php
echo img(array('src'=>'images/assets/mfo.jpg'));

    echo anchor_popup('http://www.budzet.ba/', 'www.budzet.ba');
    echo " | ";
    echo anchor_popup('http://www.javnefinansije.ba/', 'javnefinansije.ba');
    echo " | ";
    echo anchor_popup('http://www.cci.ba', 'www.cci.ba');
    echo " | ";
    echo anchor_popup('http://www.analitika.ba', 'www.analitika.ba');
    echo " | ";
    echo anchor_popup('http://www.fiskalnimonitor.rs/index-februar.php', 'Fiskalni monitor');
    //echo " | ";

?>
</div>



            <br>
            <?php //echo anchor_popup('http://www.usa.gov', 'USA.GOV'); ?>
            <?php //echo " | " ?>
            <?php //echo anchor_popup('http://www.usaspending.gov', 'USASPENDING.GOV'); ?>
            <?php //echo " | " ?>
            <?php //echo anchor_popup('http://www.whitehouse.gov', 'WHITEHOUSE.GOV'); ?>
            <?php //echo " - " ?>
            <?php //echo anchor_popup('http://www.cio.gov', 'CIO.GOV'); ?>

    </div>

                </div><!--content-->





    <!-- END OF MAIN CONTENT -->


</body>
</html>
