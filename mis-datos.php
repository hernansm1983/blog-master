<?php require_once 'includes/redireccion.php'; ?>
<?php require_once 'includes/cabecera.php'; ?>	
<?php require_once 'includes/lateral.php'; ?>
<?php require_once 'includes/helpers.php'; ?>
		
<!-- CAJA PRINCIPAL -->
<div id="principal">
	<h1>Mis Datos</h1>
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

	<form action="actualizar-usuario.php" method="POST"> 
			<label for="nombre">Nombre</label>
                        <input type="text" name="nombre" value="<?=$_SESSION['usuario']['nombre'];?>" />
			<?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'nombre') : ''; ?>

			<label for="apellidos">Apellidos</label>
			<input type="text" name="apellidos" value="<?=$_SESSION['usuario']['apellidos'];?>"/>
			<?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'apellidos') : ''; ?>

			<label for="email">Email</label>
                        <input type="email" name="email" value="<?=$_SESSION['usuario']['email'];?>" />
			<?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'email') : ''; ?>

			<label for="password">Contraseña</label>
			<input type="password" name="password" />
			<?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'], 'password') : ''; ?>

			<input type="submit" name="submit" value="Actualizar" />
		</form>
    <?php borrarErrores(); ?>

</div> <!--fin principal-->
        
<?php require_once 'includes/pie.php'; ?>