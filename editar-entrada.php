<?php require_once 'includes/redireccion.php'; ?>
<?php require_once 'includes/conexion.php'; ?>
<?php require_once 'includes/helpers.php'; ?>

<?php require_once 'includes/cabecera.php'; 
      $entrada_actual = conseguirEntrada($db, $_GET['id']);
      //var_dump($entrada_actual);
      if(!$entrada_actual){
            Header ("Location:index.php");
      }?>

<?php require_once 'includes/lateral.php'; ?>

		
<!-- CAJA PRINCIPAL -->
<div id="principal">
    
    <h1>Edicion de <?=$entrada_actual['titulo'];?></h1>
    <br />
    <!-- Mostrar errores -->
    <?php if(isset($_SESSION['completado'])): ?>
            <div class="alerta alerta-exito">
                    <?=$_SESSION['completado']?>
            </div>
    <?php elseif(isset($_SESSION['errores'])): ?>
            <div class="alerta alerta-error">
                    <?php foreach($_SESSION['errores'] as $valor){echo $valor;}?>
            </div>
    <?php endif; ?>
    
    <form action="guardar-entrada.php?editar=<?=$entrada_actual['id']?>" method="POST">
        <br />
        <h3><span class="fecha"><?=$entrada_actual['fecha']?> | <?=$entrada_actual['usuario']?></span></h3>
        <br />

        <label for="categoria">Categoria:</label>
                        <select name="categoria">
                        <?php
                              $categorias = conseguirCategorias($db);
                              if(!empty($categorias)):
                              while($categoria = mysqli_fetch_assoc($categorias)): ?>
                                <option value="<?=$categoria['id']?>" <?=($entrada_actual['categoria_id'] == $categoria['id']) ? 'selected="selected"' : '' ?> ><?=$categoria['nombre']?></option>
                        <?php	
                                endwhile;
                                endif;	
                        ?>
                        </select>
        </br></br>
        
        <label for="titulo">Titulo de la Entrada: </label>
        <input type="text" name="titulo" required value="<?=$entrada_actual['titulo'];?>"/>
        </br>
        <label for="descripcion">Descripcion: </label>
        <textarea name="descripcion" required rows="15" cols="84"><?=$entrada_actual['descripcion']; ?></textarea>
        </br>
        <input type="submit" value="Guardar" />
    </form>
    
    <?php borrarErrores(); ?>    
    
</div> <!--fin principal-->
			
<?php require_once 'includes/pie.php'; ?>