<?php require_once 'includes/redireccion.php'; ?>
<?php require_once 'includes/cabecera.php'; ?>	
<?php require_once 'includes/lateral.php'; ?>
		
<!-- CAJA PRINCIPAL -->
<div id="principal">
	<h1>Crear Categorias</h1>
    <p>Añade nuevas categorias al Blog</p>
    <br /><br />
    <!-- Mostrar errores -->
		<?php if(isset($_SESSION['completado'])): ?>
			<div class="alerta alerta-exito">
				<?=$_SESSION['completado']?>
			</div>
		<?php elseif(isset($_SESSION['errores']['general'])): ?>
			<div class="alerta alerta-error">
				<?=$_SESSION['errores']['general']?>
			</div>
		<?php endif; ?>

	<form action="guardar-categoria.php" method="POST">
        <label for="nombre">Nombre de la Categoria: </label>
        <br />
        <input type="text" name="nombre" required="required" maxlength="10"/>
        <input type="submit" value="Guardar" />
    </form>
    <?php borrarErrores(); ?>

</div> <!--fin principal-->
        
<?php require_once 'includes/pie.php'; ?>