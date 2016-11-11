
<!DOCTYPE html>
<html>
<header>
    <title>Betaalopties algemeen</title>
</header>
<link rel="stylesheet" type="text/css" href="../styles.css"/>
<body>

<div class = "mainContainer"

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="../Homepage.php">Home </a>&nbsp;
<a href="../Inloggen.php">Inloggen </a>&nbsp;
<a href="../Contact.php">Contact   </a>&nbsp;
<a href="../Comments/index.php">Recensie </a>&nbsp;

<img src="Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />


<form action="betaalopties.php" method="post">

        <div class = "container">



    <label><b>Type betaling:</b></label><br /><br />
            <select onchange="window.open(this.options[this.selectedIndex].value)">
                <option value="">Go to page...</option>
                <option value="iDeal.php">iDeal</option>
                <option value="https://www.paypal.com/">PayPal</option>
                <option value="https://www.mastercard.nl/nl-nl.html">Mastercard</option>
                <option value="https://www.visa.nl/">Visa</option>
            </select>


    </div>
</form>

</body>

</html>
