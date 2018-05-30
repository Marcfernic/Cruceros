<?php
require("comun.php");
cabecera("Facturas de un cliente");
?>
<div class="cuerpo">

<!-- tabla con B.D. -->
<table id="t01">
<!-- Para sacar el nombre de los campos de la tabla -->
<tr>
<th>Fecha</th>
<th>Puerto</th>
<th>Pais</th>
</tr>

<tr>
<td>2013-09-03</td>
<td>Mesina</td>
<td>IT</td>
</tr>

<tr>
<td>2013-09-04</td>
<td>Tunez</td>
<td>AL</td>
</tr>

<tr>
<td>2013-09-06</td>
<td>Barcelona</td>
<td>ES</td>
</tr>

<tr>
<td>2013-09-07</td>
<td>Marsella</td>
<td>FR</td>
</tr>

<tr>
<td>2013-09-08</td>
<td>Genova</td>
<td>IT</td>
</tr>

<!-- Aqu� terminan las filas de la tabla-->
</table>
</div>
<?php
pie();
?>
