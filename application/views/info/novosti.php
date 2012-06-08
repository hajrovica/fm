<div class="gry">


    <div id="novosti">

        <h1 id="<?php //echo $this->router->method; ?>">
           <?php if ($this->uri->segment(2)) {
                echo anchor('/novosti', 'Novosti') . " - " . $novosti[0]['naslov'];
                $novosti[0]['naslov']=null;
            }else{
                echo "Novosti";

            } ?>
        </h1>

        <hr class="sl" style="width:70%;">

        <br>
        <?php
        //echo $this->uri->segment(2);

        echo "<h2>" . $novosti[0]['naslov'] . "</h2>";
        echo $novosti[0]['text'];
        echo "<br clear=\"all\">";

        //Remove First array item
        array_shift($novosti);

        echo "<br>";
        //echo "<hr class=\"sl\">";


        foreach ($novosti as $arr => $novost) {
            //make function for build of half
            echo "<h3>" . anchor("novosti/".$novost['id'], $novost['naslov']) . "</h3>";
            echo $novost['intro'];
            echo "<br><hr class=\"sl\" style=\"width:30%;\">";
        }





        //Controll output for array passed to this view
        // echo "<br><br><br><hr>";
        // echo "<br><br><br><hr>";
        // echo "<pre>";
        // print_r($novosti);
        // //print_r($novosti1);
        // echo "</pre>";

         ?></div></div>



