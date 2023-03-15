<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style/style.css">

    <title>PROVAS PER LA WEB</title>

</head>

<body>   

  <div class="container-slider">
    <div class="slider" id="slider">

      <div class="slider__section">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4G3msIJjbUJud8kjKCTGxvyQ0T8sx6ts1mA&usqp=CAU" 
        alt="" class="slider__img">
      </div>

      <div class="slider__section">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf11hZZFFddAF5gEzJ-Olga657NDB295HB0A&usqp=CAU" 
        alt="" class="slider__img">
      </div>

      <div class="slider__section">
        <img src="https://i.pinimg.com/736x/37/e7/d7/37e7d7aa4e0348893c240c92672a6ac0.jpg" 
        alt="" class="slider__img">
      </div>

      <div class="slider__section">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXXm8pPT-X5vBoCxB3mOzHBUnvGKlNWljTQ0ifRfx-a7iAF5maJOg7rIoq54Qw9nndL_A&usqp=CAU" 
        alt="" class="slider__img">
      </div>

    </div>

    <div class="slider__btn slider__btn--right" id="btn-right">&#62;</div>
    <div class="slider__btn slider__btn--left" id="btn-left">&#60;</div>
  
  </div>

</body>

<script src="java.js"></script>

</html>















.container-slider
{
  width: 90%;
  max-width: 900px;
  margin: auto;
  overflow: hidden;
  box-shadow: 0 0 0 10px #fff, 0 15px 50px;
  position: relative;
}

.slider
{
  display: flex;
  width: 400px;
  height: 400px;
  margin-left: -100%;
}

.slider__section
{
  width: 100%;
}

.slider__img
{
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.slider__btn
{
  position: absolute;
  width: 40px;
  height: 40px;
  background: rgba(255,255,255,0.7);
  top: 50%;
  transform: translateY(-50%);
  font-size: 30px;
  font-weight: bold;
  font-family: monospace;
  text-align: center;
  border-radius: 50%;
  cursor: pointer;

}

.slider__btn:hover
{
  background: #fff ;
}

.slider__btn--left
{
  left: 10px;
}

.slider__btn--right
{
  right: 10px;
}








const slider = document.querySelector("#slider");
let sliderSection = document.querySelectorAll(".slider__section");
let sliderSectionLast = sliderSection[sliderSection.length -1];

const btnLeft = document.querySelector("btn-left");
const btnRight = document.querySelector("btn-right");

slider.insertAdjacentElement('afterbegin, sliderSectionLast');

function Next()
{
    let sliderSectionFirst = document.querySelectorAll(".slider__section")[0];
    slider.style.marginLeft = "-200%";
    slider.style.transition = "all 0.5s";
    setTimeout(function(){
        slider.style.transition = "none";
        slider.insertAdjacentElement('beforeend', sliderSectionFirst);
        slider.style.marginLeft = "-100%";
    }, 500);                                
}

function Prev()
{
    let sliderSectionFirst = document.querySelectorAll(".slider__section")[0];
    let sliderSectionLast = sliderSection[sliderSection.length -1];
    slider.style.marginLeft = "0";
    slider.style.transition = "all 0.5s";
    setTimeout(function(){
        slider.style.transition = "none";
        slider.insertAdjacentElement('afterbegin', sliderSectionFirst);
        slider.style.marginLeft = "-100%";
    }, 500);
}

btnRight.addEventListener('click', function(){
    Next();
});

btnLeft.addEventListener('click', function(){
    Prev();
});