<?php
include"conexionDB.php";
require("comun.php");
cabecera("Cambiar precio");
?>
<body>
<div class="cuerpo">
<form name="precio" method="post" action="ej_precio.php">
<table id="t01">
<!-- Para sacar el nombre de los campos de la tabla -->
<tr>
<th>Nombre</th>
<th>Precio Noche</th>

</tr>
<header id="header">
<h1>Neptuno</h1>
<p>Empresa dedicada a la comercialización de viajes navales de ocio <a href="http://html5up.net">HTML5 UP</a>.</p>
			</header>

<?php

$vNombre = isset($_POST['nombre']) ? $_POST['nombre'] : '';
$vPrecio = isset($_POST['precioNoche']) ? $_POST['precioNoche']: '' ; 


try {
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
    /*** echo a message saying we have connected ***/

    /*** The SQL SELECT statement ***/
    $sql = "Select Categoria.nombre, Categoria.precioNoche From `Cruceros`.`Categoria` Order by precioNoche"; 

   foreach ($dbh->query($sql) as $row){
   
    ?>  

        <TR>
           
            <TD><?php print $row['nombre'] ?></TD>
            <TD><?php print $row['precioNoche'] ?></TD>
        
    <?php } ?>
</table>
    <?php
/*** close the database connection ***/
    $dbh = null;

}
catch(PDOException $e)
{
    echo $e->getMessage();
}

 ?>
                        
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
