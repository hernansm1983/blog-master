<?php require_once 'includes/redireccion.php'; ?>
<?php require_once 'includes/cabecera.php'; ?>	
<?php require_once 'includes/lateral.php'; ?>
<?php require_once 'includes/helpers.php'; ?>
		
<!-- CAJA PRINCIPAL -->
<div id="principal">
    <h1>Crear Entrada</h1>
    <p>Añade nuevas Entrada al Blog</p>
    </br>
    <p><b>Nota: </b>En este blog somos amantes de los buenos modales y el vocabulario, no intentes escribir malas palabras. No podrás.</p>
    </br>
    </br>
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

	<form action="guardar-entrada.php" method="POST">

		<label for="categoria">Categoria:</label>
				<select name="categoria">
				<?php
                                      $categorias = conseguirCategorias($db);
                                      if(!empty($categorias)):
                                      while($categoria = mysqli_fetch_assoc($categorias)): ?>
					<option value="<?=$categoria['id']?>"><?=$categoria['nombre']?></option>
				<?php	
                                        endwhile;
					endif;	
                                ?>
				</select>
		</br></br>
        <label for="titulo">Titulo de la Entrada: </label>
        <input type="text" name="titulo" required />

		<label for="descripcion">Descripcion: </label>
        <textarea name="descripcion" required rows="15" cols="80"></textarea>

		

        <input type="submit" value="Guardar" />
    </form>
    <?php borrarErrores(); ?>

</div> <!--fin principal-->
        
<?php require_once 'includes/pie.php'; ?>