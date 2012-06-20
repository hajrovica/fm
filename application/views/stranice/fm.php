<?php $this->load->view('includes/right_div'); ?>
<div class="wh" style="width:75%;">
<br><h2>Fiskalni monitor u BiH</h2>
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
            <ul id="list2">
                <ol><p>pregled prihoda i rashoda jedinica lokalne samouprave;</p></ol>
                <ol><p>upoređivanje opština prema vrstama rashoda;</p></ol>
                <ol><p>rangiranje gradova prema određenim stavkama rashoda;</p></ol>
                <ol><p>vizualizaciju podataka;</p></ol>
                <ol>
                    <p>tumačenja stručnih pojmova.</p></ol>
            </ul>

<p>
    Pored toga, tematske analize pitanja od važnosti za cilj imaju dodatno educirati širu javnost o fiskalnoj politici i potaknuti diskusiju.
    Za sve ostale podatke, analize i drugo što biste željeli znati, potrebna nam je vaša podrška i aktivan doprinos.
<br>
<br>
   </p>


<h2>Zašto bi nas budžet opštine trebao interesovati? </h2>
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