var currentSlide = 0;
var sliderItems = document.querySelectorAll(".slider-item");

function showSlide(n) {
if (n < 0) {
n = sliderItems.length - 1;
} else if (n >= sliderItems.length) {
n = 0;
}
for (var i = 0; i < sliderItems.length; i++) {
sliderItems[i].style.display = "none";
}
sliderItems[n].style.display = "flex";
currentSlide = n;
}

function nextSlide() {
showSlide(currentSlide + 1);
}

function prevSlide() {
showSlide(currentSlide - 1);
}







var animacionMostrada = false;

function cargarPagina() {
  if (!animacionMostrada) {
    // Mostrar la pantalla de espera con la animación
    document.getElementById("pantallaEspera").style.display = "block";
    
    // Cambiar la variable para que no se muestre la animación otra vez
    animacionMostrada = true;
    
    // Cargar la página a la que se quiere ir después de un breve lapso de tiempo
    setTimeout(function() {
      window.location.href = "https://otro-sitio.com";
    }, 2000); // 2000 milisegundos (2 segundos) de espera antes de redireccionar
  } else {
    // Si la animación ya se ha mostrado, simplemente cargar la página de destino
    window.location.href = "https://otro-sitio.com";
  }
}

