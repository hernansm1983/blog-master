<?php 
error_reporting( E_ALL );
ini_set( 'display_errors', 1 );
require_once 'conexion.php'; ?>
<?php require_once 'includes/helpers.php'; ?>
<!DOCTYPE HTML>
<html lang="es">
	<head>
		<meta charset="utf-8" />
		<title>Blog de Videojuegos</title>
		<link rel="stylesheet" type="text/css" href="./assets/css/style.css" />
                <script src="assets/js/funciones.js"></script>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	</head>
	<body>
		<!-- CABECERA -->
		<header id="cabecera">
			<!-- LOGO -->
			<div id="logo">
				<a href="index.php">
					Blog de Videojuegos
				</a>
			</div>
			
			<!-- MENU -->
			<nav id="menu">
				<ul>
					<li>
						<a href="index.php">Inicio</a>
					</li>
                                        <li>
						<a href="lista-categorias.php">Todas</a>
					</li>
					<?php 
						$categorias = conseguirCategorias($db, '12');
						if(!empty($categorias)):
							while($categoria = mysqli_fetch_assoc($categorias)): 
					?>
								<li>
									<a href="categoria.php?id=<?=$categoria['id']?>"><?=substr($categoria['nombre'], 0, 10)?></a>
								</li>
					<?php
							endwhile;
						endif;
					?>
                                        
					
				</ul>
			</nav>
			
			<div class="clearfix"></div>
		</header>
		
		<div id="contenedor">