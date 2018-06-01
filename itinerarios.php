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

<?php
include "conexionDB.php";
require("comun.php");
cabecera("Salidas de los cruceros");

$vNoches = isset($_POST['Itinerarios.noches']) ? $_POST['Itinerarios.noches'] : '';
$vNombreBarco = isset($_POST['Barcos.nombre']) ? $_POST['Barcos.nombre'] : '';
$vNombrePuerto = isset($_POST['Puertos.nombre']) ? $_POST['Puertos.nombre'] : '';
$vNombrePais = isset($_POST['Paises.nombre']) ? $_POST['Paises.nombre'] : '';
$vFechaSalida = isset($_POST['Salidas.fechaSalida']) ? $_POST['Salidas.fechaSalida'] : null;

try {
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
    /*** echo a message saying we have connected ***/

    /*** The SQL SELECT statement ***/
    $sql = "Select Itinerarios.noches, Puertos.nombre, Paises.nombre, Barcos.nombre, Salidas.fechaSalida
            From `Cruceros`.`Itinerarios` JOIN `Cruceros`.`Salidas` On (Itinerarios.codigo = Salidas.Itinerario)
            JOIN `Cruceros`.`Puertos` JOIN `Cruceros`.`Paises` On (Puertos.pais = Paises.codigo) and (Itinerarios.puertoSalida = Puertos.codigo)
            JOIN `Cruceros`.`Barcos` On(Itinerarios.barco = Barcos.codigo)"; 

   foreach ($dbh->query($sql) as $row){
   
    ?>  

        <TR>
            <TD><?php print $row['noches'] ?></TD>
            <TD><?php print $row['nombre'] ?></TD>
            <TD><?php print $row['nombre'] ?></TD>
            <TD><?php print $row['nombre'] ?></TD>
            <TD><?php print $row['fechaSalida'] ?></TD>
            <TD><a href="verEtapas.php?Salidas.codigo=<?php echo $row['Salidas.codigo']; ?>">
                    <button name="verEtapas" value="verEtapas">Ver Etapas</button>
                </a>
               
            </TD>
        </TR>
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


</div>

    
<?php
pie();
?>
