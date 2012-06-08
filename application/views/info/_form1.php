            <?php //form_open('javna_preduzeca'); ?>
            <div style="text-align:center;">

            <?php echo form_open("", array('class'=>'stdform')); ?>

                <p><strong>Pogledajte status Vaše općine/opštine</strong></p>

                <p>Odaberite Grad:<br><?php echo form_dropdown('grad', $grad_arr); ?> <br>
                <?php if ($godina_cnt>1): ?>
                  Odaberite godinu:<br><?php echo form_dropdown('godina', $godina_arr);?>
                <?php else: ?>
                <?php echo form_hidden('godina', '2011'); ?>

                <?php endif ?>
                 </p>

                <?php //form_submit('submit', 'Submit'); ?>
                <p class="stdformbutton">
                <button class="submit radius2">Odaberi</button>
                <!-- <input type="reset" value="Reset Button" class="reset radius2"> -->
                </p>

            <?php echo form_close(); ?>

            </div>