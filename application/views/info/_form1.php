            <?php //form_open('javna_preduzeca'); ?>
            <div style="text-align:center;">
<br>

            <?php echo form_open("", array('class'=>'stdform')); ?>
                <strong>Odaberi opštinu/grad: </strong>
                <?php echo form_dropdown('grad', $grad_arr); ?>
                <?php if ($godina_cnt>1): ?>
                  Odaberite godinu:<br><?php echo form_dropdown('godina', $godina_arr);?>
                <?php else: ?>
                <?php echo form_hidden('godina', '2011'); ?>

                <?php endif ?><button class="submit radius2">Prikaži</button>

            <?php echo form_close(); ?>

            </div>
            <br>