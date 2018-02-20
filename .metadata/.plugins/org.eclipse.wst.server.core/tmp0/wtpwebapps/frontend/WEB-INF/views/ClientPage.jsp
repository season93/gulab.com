 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #2b2929;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: black;
}

.active {
    background-color: #4CAF50;
}

* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;
  align: middle;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}


/* The dots/bullets/indicators */
.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717176;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
  <ul class="nav navbar-nav">
    <ul>
<li><a href="LandingPage.html">GULAB</a></li>
  <li><a class="active" href="LandingPage.html">HOME</a></li>
  <li><a href="News.html">NEWS</a></li>
  <li><a href="ClientPage.html">CLIENT</a></li>
  <li><a href="AboutUsPage.html">ABOUT US</a></li>
<li style="float:right"><a href="RegistrationPage.html">DRIVER APPLICATION</a></li>

</ul>
</ul>
<div></div>
<div class="slideshow-container">

<div class="mySlides fade">
   <img src="<c:url value="/resources/img/SONY.jpg"/> align="middle" height="550" width="100%">
  <div class="text">SONY</div>
</div>

<div class="mySlides fade">
  <img src="img/autoad.png" align="middle" height="550" width="100%">
  <div class="text">Auto-Ad</div>
</div>

<div class="mySlides fade">
  <img src="img/BudLight.png" align="middle" height="550" width="100%">
  <div class="text">Bud Light</div>
</div>

<div class="mySlides fade">
  <img src="img/Coke_Mazda3_4_Large.jpg" align="middle" height="550" width="100%">
  <div class="text">CocaCola</div>
</div>

<div class="mySlides fade">
   <img src="img/EMI.png" align="middle" height="550" width="100%">
  <div class="text">EMI</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script></br>
<img src="img/pic.png" align="middle" height="100%" width="100%">
</body>
</html> 
