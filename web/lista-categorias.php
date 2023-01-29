<?php require_once 'includes/cabecera.php'; ?>
		
<?php require_once 'includes/lateral.php'; ?>
		
<!-- CAJA PRINCIPAL -->
<div id="principal">
	<h1>Todas las Categorias</h1>
	<br />
	<?php 
		$categorias = conseguirCategorias($db, NULL);
               
		if(!empty($categorias)):
              
			while($categoria = mysqli_fetch_assoc($categorias)):
	?>
				<article class="entrada">
					<a href="categoria.php?id=<?=$categoria['id']?>">
						<h2><?=$categoria['nombre']?></h2>
					</a>
				</article>
	<?php
			endwhile;
		endif;
	?>

	<div id="ir-al-inicio">
            <a href="index.php">Inicio</a>
        </div>
</div> <!--fin principal-->
			
<?php require_once 'includes/pie.php'; ?>