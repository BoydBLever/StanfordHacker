<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
  <link href="/app.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="/css/sq-payment.css">
  <link rel="stylesheet" type="text/css" href="/css/style.css">
    </script>
<style>
/* .header and .centered style the top-most segment of the webpage */
.header {
  	position: relative;
  	text-align: center;
  	color: white;
}
.centered {
  	position: absolute;
  	top: 50%;
  	left: 50%;
  	transform: translate(-50%, -50%);
}
.logout-centered {
 	position: absolute;
  	top: 60%; /* 60% from the top */
  	left: 50%;
  	transform: translate(-50%, -50%);
}
.welcome {
	display:flex;
}
.left{
	display: flex;
	flex: 1;
	justify-content: center;
	align-items: center;
}
.right{
	padding-top: 15px;
	display: flex;
	flex: 1;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
.welcome-center{
	align-text: center;
}
.welcome-message{
	padding: 10px;
}
.guest-reviews {
	display: flex;
	justify-content: space-around;
}
.box1 {
	display: block;
}
.box2 {
	display: block;
}
.guest-card{
	margin: 10px;
}
.accommodations-amenities{
	display: flex;
	justify-content: space-around;
}
.left-container {
	flex: 1;
}

.right-container {
	display:flex;
	flex-wrap: wrap;
	flex: 1;
	gap: 10px;
}
.reserve{
 	margin: 0 auto;
 	width: 55%;
  	border: 5px solid #3374FF;
  	padding: 20px;
  	justify-content: center;
}
/* bottom most part of the webpage */
</style>
    <meta charset="UTF-8">
    <title>stanfordhacker.com</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <div style="background-color: #F8F9FA" class="container">
		<nav class="navbar navbar-light bg-light">
  			<!-- <span class="navbar-brand mb-0 h1">StanfordHacker.com</span> -->
  			<div class="home-button">
  		<form action="" class="inline">
    		<button class="float-left submit-button">StanfordHacker.com</button>
  		</form>
  	</div>
		</nav>
		<!-- <div class="centered"><h1 style="color: #3374FF">StanfordHacker.com</h1></div>
		<div class="header">
			<img src="/img/stanfordhacker_main.jpeg" alt="beds and house interior" height="672" width="100%">
		<div class="centered"><h1 style="color: white">StanfordHacker.com</h1></div>
		<a class="logout-centered" href="/logout">Logout</a>
		</div> -->
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  			<div class="carousel-inner">
    			<div class="carousel-item active">
      				<img class="d-block w-100" src="/img/garage.jpeg" alt="First photo" height="672" width="100%">
    			</div>
    			<div class="carousel-item">
      				<img class="d-block w-100" src="/img/stanfordhacker_main.jpeg" alt="Second photo" height="672" width="100%">
    			</div>
    			<div class="carousel-item">
     				<img class="d-block w-100" src="/img/bedroom.jpeg" alt="Third photo" height="672" width="100%">
    			</div>
    			<div class="carousel-item">
     				<img class="d-block w-100" src="/img/bedroom2.jpeg" alt="Fourth photo" height="672" width="100%">
    			</div>
    			<div class="carousel-item">
     				<img class="d-block w-100" src="/img/kitchen.jpeg" alt="Fifth photo" height="672" width="100%">
    			</div>
    			<div class="carousel-item">
     				<img class="d-block w-100" src="/img/bathroom.jpeg" alt="Sixth photo" height="672" width="100%">
    			</div>
    			<div class="carousel-item">
     				<img class="d-block w-100" src="/img/bathroom2.jpeg" alt="Seventh photo" height="672" width="100%">
    			</div>
    			<div class="carousel-item">
     				<img class="d-block w-100" src="/img/bedwithpillow.jpeg" alt="Eighth photo" height="672" width="100%">
    			</div>
  			</div>
  		<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    		<span class="sr-only">Previous</span>
  		</a>
  		<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    		<span class="carousel-control-next-icon" aria-hidden="true"></span>
   	 		<span class="sr-only">Next</span>
 	 	</a>
	</div>
		<div style="border: 5px solid #3374FF" class="welcome">
			<div class="left">
				<video style="border:5px solid #B8DAFF" width="448" height="336" controls>
  				<source src="/video/StanfordHacker.mp4" type="video/mp4">
				</video>
			</div>
			<div class="right">
				<h3>Welcome To My Garage</h3>
				<p class="welcome-message">	It’s me, Boyd Lever, King of Accommodation in Silicon Valley!
				We have a huge problem here. The cost of housing has skyrocketed. And it is only going to get worse.
				I have a solution that works. It works for many people, month after month.
				And they keep coming back. I’m making revenue. I have a nice website, and I’m seeking investment to take everything to the next level.
				I’m confident that I’m the right person to do the job, I have domain expertise, and I’m also a full-stack software engineer, so I can build the backend.
				If you are a traveler looking for inexpensive accommodations with an amazing host in a perfect location by Stanford University in downtown Palo Alto, California, I invite you to email me today and make a reservation, or to simply use the form below
				to book your bed now, and discover what so many other guests love about the one and only Stanford Hacker House. I promise to offer the highest quality shared room in Silicon Valley at the lowest possible price. 
				So whether you are an engineer, designer, startup founder, investor, tech enthusiast, college student, graduate student or a curious traveler,  I look forward to welcoming you to my garage. You will enjoy having me as your superhost.
				</p>
			</div>
		</div>
		<div style="border:5px solid #B8DAFF" class="guest-reviews">
			<div class="box1">
				<div class="guest-card">
					<img src="/img/Pranav.jpeg" alt="Picture of Pranav" width="450" height="300">
					
				</div>
				<div class="guest-card">
					<img src="/img/Mitchell.jpeg" alt="Picture of Mitchell" width="450" height="270">
				</div>
			</div>
			<div class="box2">
				<div class="guest-card">
					<img src="/img/Keon.jpeg" alt="Picture of Keon" width="450" height="300">
				</div>
				<div class="guest-card">
					<img src="/img/Peter.jpeg" alt="Picture of Peter" width="450" height="270">
				</div>
			</div>
		</div>
		<div style="border: 5px solid #3374FF" class="accommodations-amenities">
			<div class="left-container">
			<h2 style="text-align: center" class="amenities-h2">Amenities</h2>
				<ul style="list-style-type:none;">
  					<li>Fast WiFi, all utilities included, no security deposit</li>
  					<li>Daily cleaning</li>
  					<li>Washer & Dryer ($10)</li>
  					<li>Bath towel, bedding, pillow, shampoo, conditioner, soap</li>
					<li>Air Conditioning & Heat</li>
					<li>Cooking basics 
						<ul style="list-style-type:none;">
							<li>Dishes & Silverware, Nespresso</li>
							<li>Rice cooker</li>
							<li>Hot plate</li>
							<li>Toaster & Microwave</li>
							<li>Nespresso</li>
							<li>And a lot more</li>
						</ul>
					</li>
					<li>Wardrobe, hangers & bins for clothes</li>
					<li>Extra storage for luggage</li>
					<li>Workspace includes standing desk & kitchen table</li>
				</ul>
			</div>
			<div class="right-container">
				
					<img src="/img/hallway.jpeg" alt="photo of walkway" width="150" height="150">
					<img src="/img/bedroom.jpeg" alt="photo of beds" width="150" height="150">
					<img src="/img/bedroom2.jpeg" alt="photo of beds" width="150" height="150">
					<img src="/img/kitchen.jpeg" alt="photo of kitchen" width="150" height="150">
					<img src="/img/bathroom.jpeg" alt="photo of shower" width="150" height="150">
					<img src="/img/bathroom2.jpeg" alt="photo of toilet & sink" width="150" height="150">
					<img src="/img/bedwithpillow.jpeg" alt="photo of shower" width="150" height="150">
					<img src="/img/garage.jpeg" alt="photo of toilet & sink" width="150" height="150">
			</div>
		</div>
		<!--
		Include a form where the user enters the number of nights they want to stay.
		Based on the user entered number, a price is calculator for the reservation.
		The guest clicks the Book Now button, which redirects to localhost 3000 where the payment form is located. -->
		<div style="border: 5px solid #B8DAFF" class="reserve">
		<h2>Create a booking</h2>
			<form oninput="price.value = quantity.valueAsNumber * 32" action="http://localhost:3000">
				<label for="name">Full name:</label>
				<input type="text" id="name">
				<br>
				<label for="quantity">Enter the number of nights:</label>
				<input type="number" id="quantity" name="quantity" min="31" max="100"> Price = $	
				<output name="price" for="quantity"> </output>
				<br>
 				<input style= "background-color: #28A745; color: white" type="submit" value="Reserve your bed now!">
 			</form>
 		</div>
 	</div>
</body>
</html>