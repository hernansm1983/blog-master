<?php require_once 'includes/cabecera.php'; 
      $categoria_actual = conseguirCategoria($db, $_GET['id']);
      if(!$categoria_actual){
            Header ("Location:index.php");
      }?>
		
<?php require_once 'includes/lateral.php'; ?>
		
<!-- CAJA PRINCIPAL -->
<div id="principal">
 
	<h1>Juegos de <?=$categoria_actual['nombre'];?></h1>
	
	<?php 
		$entradas = conseguirEntradas($db, null, $_GET['id']);
		if(!empty($entradas) && mysqli_num_rows($entradas) >= 1):
			while($entrada = mysqli_fetch_assoc($entradas)):
	?>
				<article class="entrada">
					<a href="entrada.php?id=<?=$entrada['id']?>">
						<h2><?=$entrada['titulo']?></h2>
						<span class="fecha"><?=$entrada['categoria'].' | '.$entrada['fecha']?></span>
						<p>
							<?=substr($entrada['descripcion'], 0, 180)."..."?>
						</p>
					</a>
				</article>
	<?php
			endwhile;
		else: ?>
                    <br />
                    <div class="alerta">No hay Entradas en esta categoria.</div>
        <?php   endif;	?>

	<div id="ir-al-inicio">
		<a href="index.php">Inicio</a>
	</div>
</div> <!--fin principal-->
			
<?php require_once 'includes/pie.php'; ?>