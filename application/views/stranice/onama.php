<?php $this->load->view('includes/right_div'); ?>
<style type="text/css">

/*  Table design*/
#background-image
{
    font-family: "PT Sans Narrow",  "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    font-size: 15px;
    margin: 45px;
    width: 75%;
    text-align: left;
    border-collapse: collapse;
    background: url('<?php echo base_url(); ?>images/assets/crnilogo.png') 90% 80% no-repeat;
}
#background-image th
{
    padding: 12px;
    font-weight: normal;
    font-size: 15px;
    /*color: #339;*/
    color: #000;
}
#background-image td
{
    padding: 9px 12px;
    /*color: #669;*/
    color: #2A2A2A;
    border-top: 1px solid #fff;
}
#background-image tfoot td
{
    font-size: 11px;
}
#background-image tbody td
{
    background: url('<?php echo base_url(); ?>images/table-images/back.png');
}
* html #background-image tbody td
{
    /*
       ----------------------------
        PUT THIS ON IE6 ONLY STYLE
        AS THE RULE INVALIDATES
        YOUR STYLESHEET
       ----------------------------
    */
    filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?php echo base_url(); ?>table-images/back.png',sizingMethod='crop');
    background: none;
}
#background-image tbody tr:hover td
{
    color: #339;
    background: none;
}

</style>
<div class="wh" style="width:77%;">
    <h2>
        O nama
    </h2>
    <br>

<p>Fiskalni monitor je regionalna inicijativa za transparentnost i odgovornost jedinica lokalne samouprave u zemaljama Balkana, koja se realizuje u cilju podizanja građanske svijesti o značaju transparentnog budžetiranja.

    Inicijativa se trenutno implementira u Srbiji, Makedoniji i Bosni i Hercegovini.<br><br>
    Fiskalni monitor u BiH je servis koji prati prihode i rashode opština u BiH i građanima omogućava jednostavan prikaz tokova novca u jedinicama lokalne samouprave. Ciljevi inicijative su objediniti javne podatke kroz jedinstvenu platformu, informisati širu javnost o izvršenju budžeta na lokalnom nivou i ojačati građansku svijest o značaju transparentnog budžetiranja.
<br><br>
    U prvoj fazi objavljujemo budžetske podatke devet opština u BiH koje su nam dostavile relevantne informacije. Tim Fiskalnog monitora u BiH će nastaviti kontinuirano prikupljati budžetske podatke ostalih opština i gradova u BiH i objavljivati ih široj javnosti.
<br>
<br>
    Fiskalni monitor u BiH implementira <?php echo anchor_popup('http://ssst.edu.ba', 'Sarajevska škola za nauku i tehnologiju.') ?>.</p>

    <p>


       <table id="background-image">
    <thead>
        <tr>
            <th scope="col"> Tim Fiskalnog monitora u BiH</th>
            <th scope="col">Savjetnici</th>

        </tr>
    </thead>
    <tfoot>
        <tr>
            <td colspan="2"> </td>
        </tr>
    </tfoot>
    <tbody>
        <tr>
            <td>Zana Karkin</td>
            <td>Dr. Goran Miraščić</td>



        </tr>
        <tr>
            <td>Emir Ganić</td>
            <td>Dr. Adisa Omerbegović</td>


        </tr>
        <tr>
            <td>Naida Dervišhalidović</td>
            <td>Dr. Vedad Hulusić</td>
        </tr>
        <tr>
            <td>Amar Hajrović</td>
            <td> </td>

        </tr>

        <tr>

            <td>Tarik Mehmedović</td>
            <td>Građani BiH </td>

        </tr>

        <tr>

            <td>Nejra Čekić</td>
            <td> </td>
        </tr>
          <tr>

            <td>Članovi studentske organizacije ENTER SSST</td>
            <td> </td>
        </tr>

    </tbody>
</table>


    </p>
<p>
    Posjetite stranice ostalih inicijativa zemalja u regionu: <?php echo anchor_popup('http://www.fiskalnimonitor.rs', 'Fiskalni monitor u Srbiji'); ?> |
 <?php echo anchor_popup('http://www.fiskalenmonitor.mk', 'Fiskalni monitor u Makedoniji'); ?><br>

</p>
