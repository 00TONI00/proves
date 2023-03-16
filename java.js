var animacionMostrada = false;

function cargarPagina() {
  if (!animacionMostrada) {
    // Mostrar la pantalla de espera con la animación
    document.getElementById("pantallaEspera").style.display = "block";
    
    // Cambiar la variable para que no se muestre la animación otra vez
    animacionMostrada = true;
    
    // Esperar 10 segundos antes de cargar la página
    setTimeout(function() {
      window.location.href = "https://otro-sitio.com";
    }, 10000); // 10000 milisegundos (10 segundos) de espera antes de redireccionar
  } else {
    // Si la animación ya se ha mostrado, simplemente cargar la página de destino
    window.location.href = "https://otro-sitio.com";
  }
}
