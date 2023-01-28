function confirmarBorrado(id) {
  if(confirm("Desea Eliminar la entrada?")){
    window.location.href = "eliminar-entrada.php?id="+id;
  }
}