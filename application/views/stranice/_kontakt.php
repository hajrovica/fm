
                        <div style="text-align:center;">
                            <h2 style="text-align:center;">Vaša poruka</h2>
                        </div>
                        <?php
                        $name = $this->input->post('name');
                        $mail = $this->input->post('email');
                        $poruka = $this->input->post('poruka');
                        $kontakt = $this->input->post('kontakt');

                        $name = (isset($name)) ? $name : '' ;
                        $mail = (isset($mail)) ? $mail : '' ;
                        $poruka = (isset($poruka)) ? $poruka : '' ;
                        $kontakt = (isset($kontakt)) ? $kontakt : '' ;


                         ?>

                    <br />

                    <form id="form1" class="stdform" method="post" action="">
                        <p>
                            <label>Ime *</label>
                            <span class="field"><input type="text" name="name" id="name" class="longinput" value="<?php echo $name; ?>" /></span>
                        </p>

                        <!-- <p>
                            <label>Last Name</label>
                            <span class="field"><input type="text" name="lastname" id="lastname" class="longinput" /></span>
                        </p> -->

                        <p>
                            <label>E-mail *</label>
                            <span class="field"><input type="text" name="email" id="email" class="longinput" value="<?php echo $mail;?>" /></span>
                        </p>

                       <!--  <p>
                            <label>Kontakt *</label>
                            <span class="field">
                            <select name="kontakt">
                                <option value="">Izaberite kontakt</option>
                                <option value="info" <?php echo $selected = ($kontakt == 'info') ? 'selected' : '' ; ?>>Generalne informacije</option>
                                <option value="tim" <?php echo $selected = ($kontakt == 'tim') ? 'selected' : '' ; ?>>Pitanje za članove tima</option>
                            </select>
                            </span>
                        </p> -->

                        <p>
                            <label>Poruka *</label>
                            <span class="field"><textarea cols="80" rows="5" name="poruka" class="mediuminput" id="poruka"><?php echo $poruka; ?></textarea></span>
                            <div style="text-align:center;"> <button class="submit radius2">Pošalji</button></div>
                        </p>


                        <br />

                        <p class="stdformbutton">

                        </p>
                    </form>
                    <br clear="all" /><br />
