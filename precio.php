<?php
require("comun.php");
cabecera("Cambiar precio");
?>
<body>
<div class="cuerpo">
<form name="precio" method="post" action="ej_precio.php">

<table border="0" align="center">
<tr><td align="left">Categor&iacute;a: </td>
<td>
        <select name="codigo">
           <option value="FLA">
                   Super Family Cabin (PVP actual 140 Eur.)
           </option>
           <option value="INS">
                   Interior (PVP actual 50 Eur.)
           </option>
           <option value="OUB">
                   Camarote con balcon (PVP actual 70 Eur.)
           </option>
           <option value="OUT">
                   Vista al mar (PVP actual 60 Eur.)
           </option>
           <option value="SAB">
                   Aurea Suite Balcony (PVP actual 110 Eur.)
           </option>
           <option value="SUA">
                   Aurea Suite (PVP actual 100 Eur.)
           </option>
           <option value="SUB">
                   Suite con balcon (PVP actual 90 Eur.)
           </option>
           <option value="SUD">
                   Deluxe suite (PVP actual 120 Eur.)
           </option>
           <option value="SUF">
                   Suite familiar con balcon (PVP actual 130 Eur.)
           </option>
           <option value="SUI">
                   Suite (PVP actual 80 Eur.)
           </option>
           <option value="YTC">
                   Yacht Club (PVP actual 150 Eur.)
           </option>
        </select>

</td>
</tr>
<tr><td align="left">Nuevo Precio: </td><td><input type="text" name="precio" id="precio" /></td></tr>
</table><br />
<input type="submit" value="Enviar" />&nbsp;<input type="reset" value="Reestablecer" />
</form>
</div>
<?php
pie();
?>
