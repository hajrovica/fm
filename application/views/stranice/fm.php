<?php $this->load->view('includes/right_div'); ?>
<div class="wh" style="width:75%;">
<h2>Fiskalni monitor u BiH</h2>
<br>
    <p>
         je servis koji prati prihode i rashode opština u BiH i građanima omogućava jednostavan prikaz tokova novca u njihovim jedinicama lokalne samouprave.
        <br>
        Ciljevi inicijative su objediniti javne podatke kroz jedinstvenu platformu, informisanje šire javnosti o izvršenju budžeta na lokalnom nivou i podizanje građanske svijesti o značaju transparentnog budžetiranja.
        <br>
        <br>
        <strong>Šta ćete pronaći ovdje?</strong>
        <br>
        Fiskalni monitor građanima omogućava sljedeće funkcionalnosti:</p>
            <ul>
                <li>pregled prihoda i rashoda jedinica lokalne samouprave;</li>
                <li>upoređivanje opština prema vrstama rashoda;</li>
                <li>rangiranje gradova prema određenim stavkama rashoda;</li>
                <li>vizualizaciju podataka;</li>
                <li>
                    tumačenja stručnih pojmova.</li>
            </ul>

<p>
    Pored toga, tematske analize pitanja od važnosti za cilj imaju dodatno educirati širu javnost o fiskalnoj politici i potaknuti diskusiju.
    <br>
    Za sve ostale podatke, analize i drugo što biste željeli znati, potrebna nam je vaša podrška i aktivan doprinos.
<br>
<br>
   </p>

<br>
<?php
    //$this->load->helper('html');
    //define vars

    $gImg=null;


    $gImg = img(array(
        'src'=>'images/assets/glavnaslika.jpg',
        'height'=>'385'

        ));
echo anchor('novac', $gImg);

 ?>


</div>