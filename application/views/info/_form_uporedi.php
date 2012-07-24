            <div style="text-align:center;">


            <?php echo form_open("", array('class'=>'stdform')); ?>

                <?php
                if (isset($grad_arr)) {
echo <<<HTML
<strong>Odaberite opštinu/grad: </strong><br><br>
HTML;
                    echo form_dropdown('grad', $grad_arr);
                }

                 if (isset($grad_arr1)) {
                    echo form_dropdown('grad1', $grad_arr1);
                }

                 if (isset($grad_arr2)) {
                    echo form_dropdown('grad2', $grad_arr2);
                }

                //go to new line in form  - view issue

                if (isset($grupa_arr)) {
                    echo "<br><br><strong>Odaberite kategoriju rashoda za poređenje podataka: </strong><br><br>";
                    //echo form_dropdown('grupa', $grupa_arr);
                    echo "$grupa_arr";
                }


                if (isset($stavka_arr)) {
                    echo "<br><br><strong>Odaberite stavku: </strong><br><br>";
                    echo form_dropdown('stavka', $stavka_arr);
                }





                // Control out print
                // echo "<pre>";
                // print_r($grad_arr);
                // print_r($grupa_arr);


                ?>
                <?php if ($godina_cnt>1): ?>
                  <br><br><strong>Odaberite godinu: </strong><br><?php echo form_dropdown('godina', $godina_arr);?>
                <?php else: ?>
                <?php echo form_hidden('godina', '2011'); ?>

                <?php endif ?><button class="submit radius2">Prikaži</button>

            <?php echo form_close(); ?>





                </script>



            </div>
            <br>