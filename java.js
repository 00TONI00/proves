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

