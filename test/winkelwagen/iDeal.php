<!DOCTYPE html>
<html>
<header>
    <title>Orderregel</title>
 <link rel="stylesheet" type="text/css" href="../styles.css"/>
</header>

<body>

<div class = "mainContainer"

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="Homepage.php">Home     </a>&nbsp;
<a href="Inloggen.php">Inloggen </a>&nbsp;
<a href="Contact.php">Contact   </a>&nbsp;
<a href="Recensie.php">Recensie </a>&nbsp;

<img src="Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />


<form action="bestelformulier.php" method="post">

    <div class = "container">



        <label><b>Type betaling:</b></label><br /><br />
        <select onchange="window.open(this.options[this.selectedIndex].value)">
            <option value="">Kies uw bank</option>
            <option value="https://www.rabobank.nl/particulieren/">Rabobank</option>
            <option value="https://www.ing.nl/particulier/index.html">ING</option>
            <option value="https://www.abnamro.nl/nl/prive/index.html">ABN AMRO</option>
            <option value="https://www.triodos.nl/nl/particulieren/">Triodos</option>
        </select>


    </div>
</form>

</body>

</html>
