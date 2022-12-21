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
.guest-reviews {
	display: flex;
}
.box1 {
	display: block;
}
.box2 {
	display: block;
}
.accommodations-amenities{
	display: flex;
}
.reserve{
 	margin: 10px;
 	width: 55%;
  	border: 5px solid teal;
  	padding: 20px;
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
</head>
<body>
    <div class="container mt-5">
		<div class="header">
			<img src="/img/stanfordhacker_main.jpeg" alt="beds and house interior" style="width:100%">
		<div class="centered">Stanford Hacker House</div>
		<a class="logout-centered" href="/logout">Logout</a>
		</div>
		<div class="welcome">
			<div class="left">
			<video width="448" height="336" controls>
  			<source src="/video/StanfordHacker.mp4" type="video/mp4">
			</video>
			</div>
			<div class="right">
			<p>Welcome, travelers!</p>
			<p>	It’s me, Boyd Lever, King of Accommodation in Silicon Valley.<br>
				We have a huge problem here. The cost of housing has skyrocketed.<br> 
				And it is only going to get worse. I have a solution that works. It works for many people, month after month. <br>
				And they keep coming back. I’m making revenue. I have a nice website, and I’m seeking investment to take everything to the next level.<br>
				I’m confident that I’m the right person to do the job, I have domain expertise, and I’m also a full-stack software engineer, so I can build the backend.<br>
				Email boydlever@stanfordhacker.com to reserve your bed now.
			</p>
			</div>
		</div>
		<div class="guest-reviews">
			<div class="box1">
				<div class="A">
					<img src="/img/Peter.jpeg" alt="Picture of Peter" width="450" height="270">
				</div>
				<div class="B">
					<img src="/img/Mitchell.jpeg" alt="Picture of Mitchell" width="450" height="270">
				</div>
			</div>
			<div class="box2">
				<div class="C">
					<img src="/img/Pranav.jpeg" alt="Picture of Pranav" width="450" height="280">
					
				</div>
				<div class="D">
					<img src="/img/Keon.jpeg" alt="Picture of Keon" width="450" height="280">
				
				</div>
			</div>
		</div>
		<div class="accommodations-amenities">
			<div class="left-container">
			<h2>Amenities</h2>
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
				<div class="top-row"> 
					<img src="/img/hallway.jpeg" alt="photo of walkway" width="150" height="150">
					<img src="/img/bedroom.jpeg" alt="photo of beds" width="150" height="150">
					<img src="/img/bedroom2.jpeg" alt="photo of beds" width="150" height="150">
				</div>
				<div class="bottom-row">
					<img src="/img/kitchen.jpeg" alt="photo of kitchen" width="150" height="150">
					<img src="/img/bathroom.jpeg" alt="photo of shower" width="150" height="150">
					<img src="/img/bathroom2.jpeg" alt="photo of toilet & sink" width="150" height="150">
				</div>
			</div>
		</div>
		<!--
		Include a form where the user enters the number of nights they want to stay.
		Based on the user entered number, a price is calculator for the reservation.
		The guest clicks the Book Now button, which redirects to localhost 3000 where the payment form is located. -->
		<div class="reserve">
		<h2>Reserve</h2>
			<form action="http://localhost:3000">
				<label for="name">Full name:</label>
				<input type="text" id="name">
				<br>
				<label for="quantity">Enter your number of nights (rate = $32):</label>
				<input type="number" id="quantity" name="quantity" min="31" max="100">	
				<br>
 				<input type="submit" value="Book now!">
 			</form>
 		</div>
 	</div>
</body>
</html>