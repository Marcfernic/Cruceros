<?php
include "conexionDB.php";
require("comun.php");
cabecera("Cambiar precio");
?>
<div class="cuerpo">
    
        </TR>
        <form id="precio" method="post" action="">
            <fieldset>
                    <input value="<?php echo isset($row['nombre']) ? $row['nombre'] : '' ?>" type="text" name="nombre" id="nombre" placeholder="nombre" size="30"/><br />              
                    <input value="<?php echo isset($row['precioNoche']) ? $row['precioNoche'] : '' ?>" type="text" name="precio" id="precioNoche" placeholder="precio" size="10"/><br />
            </fieldset>
         </form>   
  </div>               
<?php
try {
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
    /*** echo a message saying we have connected ***/

    /*** The SQL SELECT statement ***/
    $sql = "Update Categoria.precioNoche From `Cruceros`.`Categoria` where Categoria.nombre=$vNombre"; 

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
