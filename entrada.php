<?php require_once 'includes/cabecera.php'; 
      $entrada_actual = conseguirEntrada($db, $_GET['id']);
      //var_dump($entrada_actual);
      if(!$entrada_actual){
            Header ("Location:index.php");
      }?>

<?php require_once 'includes/lateral.php'; ?>
		
<!-- CAJA PRINCIPAL -->
<div id="principal">
    
    <h1>Detalles de <?=$entrada_actual['titulo'];?></h1>
    <a href="categoria.php?id=<?=$entrada_actual['categoria_id'];?>"><h2><?=$entrada_actual['categoria'];?></h2></a>
    <br />
    <h3><span class="fecha"><?=$entrada_actual['fecha']?> | <?=$entrada_actual['usuario']?></span></h3>
    <br />
    <p><?=$entrada_actual['descripcion']; ?></p>        
    <br /><br />

    <?php if(isset($_SESSION['usuario']) && $_SESSION['usuario']['id'] == $entrada_actual['usuario_id']): ?>
           <div id="usuario-logueado" class="bloque-edicion">
                    <a href="editar-entrada.php?id=<?=$entrada_actual['id']?>" class="boton-edicion boton-naranja">Editar Entrada</a>
                    &nbsp; &nbsp;  
                    <a href="javascript:confirmarBorrado(<?=$entrada_actual['id']?>)" class="boton-edicion boton-rojo">Eliminar Entrada</a>
           </div>
    <?php endif; ?>    
        
    <div id="ir-al-inicio">
            <a href="index.php">Inicio</a>
    </div>
</div> <!--fin principal-->
			
<?php require_once 'includes/pie.php'; ?>