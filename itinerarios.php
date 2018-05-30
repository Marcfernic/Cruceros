<?php
require("comun.php");
cabecera("Salidas de los cruceros");
?>
<div class="cuerpo">

<!-- tabla con B.D. -->
<table id="t01">
<!-- Para sacar el nombre de los campos de la tabla -->
<tr>
<th>Noches</th>
<th>Puerto</th>
<th>País</th>
<th>Barco</th>
<th>Fecha</th>
<th>Acciones</th>
</tr>
<tr>
<td>7</td>
<td>Napoles</td>
<td>IT</td>
<td>PREZIOSA</td>
<td>2013-09-02</td>
<td><a href="verEtapas.php?codigoSalida=1">Ver etapas</a></td>
</tr>

<tr>
<td>7</td>
<td>Napoles</td>
<td>IT</td>
<td>PREZIOSA</td>
<td>2013-09-09</td>
<td><a href="verEtapas.php?codigoSalida=2">Ver etapas</a></td>
</tr>

<tr>
<td>7</td>
<td>Barcelona</td>
<td>ES</td>
<td>SPLENDIDA</td>
<td>2013-09-02</td>
<td><a href="verEtapas.php?codigoSalida=3">Ver etapas</a></td>
</tr>

<tr>
<td>7</td>
<td>Barcelona</td>
<td>ES</td>
<td>SPLENDIDA</td>
<td>2013-09-09</td>
<td><a href="verEtapas.php?codigoSalida=4">Ver etapas</a></td>
</tr>

<tr>
<td>7</td>
<td>Venecia </td>
<td>IT</td>
<td>DIVINA</td>
<td>2013-08-31</td>
<td><a href="verEtapas.php?codigoSalida=5">Ver etapas</a></td>
</tr>

<tr>
<td>7</td>
<td>Venecia </td>
<td>IT</td>
<td>DIVINA</td>
<td>2013-09-07</td>
<td><a href="verEtapas.php?codigoSalida=6">Ver etapas</a></td>
</tr>
<!-- Aquí terminan las filas de la tabla-->
</table>
</div>
<?php
pie();
?>
