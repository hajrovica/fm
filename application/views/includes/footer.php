    <hr class="sl">


<div class="wh">

    <?php

    $img = img(array(
            'src'=>'images/assets/info.png'


            ));

        echo anchor('kontakt', $img);
    ?>

</div>


<div class="gry">
        <div class="one_third" style="text-align: left;">
          <?php

                $img = img(array(
                        'src'=>'images/assets/crnilogo.png',
                        'class'=>'icons',
                        'style'=>'float:left;',
                        'valign'=>'middle'


                        ));

                    echo $img;

                ?>
        <br>&copy; Copyright SSST 2012 <br> Sva prava pridržana.
        </div>


        <div class="one_third">
            <?php echo nbs(1); ?>
        </div>

        <div class="one_third last">
            <?php

            $fb = img(array('src'=>'images/assets/facebook_icon.png','height'=>'40px', 'class'=>'fade'));
            $tw = img(array('src'=>'images/assets/twitter_icon.png','height'=>'40px', 'class'=>'fade'));
            $mail = img(array('src'=>'images/assets/mail_icon.png','height'=>'40px', 'class'=>'fade'));



             echo anchor_popup('http://www.facebook.com/FiskalniMonitorBiH', $fb);
             echo anchor_popup('#', $tw);
             echo anchor_popup('kontakt', $mail);

             ?>
        </div>


        <br clear="all">
    </div>



<div class="gry" style="text-align: left; vertical-align: middle; margin:0px; margin-top:3px;">

<?php
echo img(array('src'=>'images/assets/mfo.jpg'));

    echo anchor_popup('http://www.budzet.ba/', strtoupper('budzet.ba'), array('class'=>'ftrlnk'));
    echo " | ";
    echo anchor_popup('http://www.javnefinansije.ba/', strtoupper('javnefinansije.ba'), array('class'=>'ftrlnk'));
    echo " | ";
    echo anchor_popup('http://www.cci.ba', strtoupper('cci.ba'), array('class'=>'ftrlnk'));
    echo " | ";
    echo anchor_popup('http://www.analitika.ba', strtoupper('analitika.ba'), array('class'=>'ftrlnk'));
    echo " | ";
    echo anchor_popup('http://www.fiskalnimonitor.rs/index-februar.php', strtoupper('Fiskalni monitor u Srbiji'), array('class'=>'ftrlnk'));
    echo " | ";
    echo anchor_popup('http://www.fiskalenmonitor.mk', strtoupper('Fiskalni monitor u makedoniji'), array('class'=>'ftrlnk'));
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
