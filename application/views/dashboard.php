<div class="gry">
    <h1>Dashboard</h1>
    <br clear="all"><br><br>
    <?php //echo $page; ?>

    <h3>Tabela prihoda</h3>
    <p>
        Link za tabelu prihodi - <?php echo anchor('dashboard/prihodi', 'Prihodi');
        echo " - ";
        echo anchor('dashboard/csv/prihodi', 'Csv upload');
         ?>

    </p>
    <hr class="sl">


    <h3>Tabela rashoda</h3>
    <p>
        Link za tabelu rashodi <?php echo anchor('dashboard/rashodi', 'Rashodi');
        echo " - ";
        echo anchor('dashboard/csv/rashodi', 'Csv upload'); ?>

    </p>
    <hr class="sl">

    <h3>Opštine</h3>
    <p>
      Link za tabelu opstina <?php echo anchor('dashboard/opcine', 'Opstine'); ?>

    </p>
    <hr class="sl">

    <h3>Novosti</h3>
    <p>
      Link za tabelu novosti <?php echo anchor('dashboard/novosti', 'Novosti'); ?>

    </p>
    <hr class="sl">
</div>