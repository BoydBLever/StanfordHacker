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
</style>
    <meta charset="UTF-8">
    <title>StanfordHacker</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-5">
		<div class="header">
			<img src="stanfordhacker_main.jpeg" alt="beds and house interior" style="width:100%">
		<div class="centered">Stanford Hacker House</div>
		</div>
		<div class="welcome">
			<div class="left">
			<h1>To be included: Founder Video</h1>
			</div>
			<div class="right">
			<p>An airbnb for hackers</p>
			</div>
		</div>
		<div class="guest-reviews">
			<div class="box1"></div>
				<div class="A">
					<img src="Peter.jpeg" alt="Picture of guest">
					<p>Text of Peter's review</p>
				</div>
				<div class="B">
					<img src="Carlo.jpeg" alt="Picture of guest">
					<p>Text of Carlo's review</p></div>
			<div class="box2"></div>
				<div class="C">
					<img src="Pranav.jpeg" alt="Picture of guest">
					<p>Text of Pranav's review</p></div>
				</div>
				<div class="D">
					<img src="Kim.jpeg" alt="Picture of guest">
					<p>Text of Kim's review</p>
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
					<img src="hallway.jpeg" alt="photo of walkway">
					<img src="bedroom.jpeg" alt="photo of beds">
					<img src="bedroom2.jpeg" alt="photo of beds">
				</div>
				<div class="bottom-row">
					<img src="kitchen.jpeg" alt="photo of kitchen">
					<img src="bathroom.jpeg" alt="photo of shower">
					<img src="bathroom2.jpeg" alt="photo of toilet & sink">
				</div>
			</div>
		</div>
		<div class="reserve-payment">
			<div class="reserve-payment-container">
				<div class="reserve">
					<h1>Reserve for 31 nights</h1>
					<form action="/action_page.php">
  						<label for="checkin">Check In: (Dec 14, 2022)</label>
  						<input type="date" id="checkin" name="checkin">
  						<br>
   						<label for="checkout">Check Out: (Jan 14, 2023)</label>
  						<input type="date" id="checkout" name="checkout">
  						<br>
  						<input type="submit" value="Book Now!">
					</form> 
						<!-- On click, display a message: You booked for 31 nights. Proceed to pay $992. -->
						<!-- Do I need to build an ERD, or can I get away with dummy variables (always 31 nights, equals $992)? One guest can have 1 reservation, and one reservation belongs to one guest. Maximum 5 reservations at a time. -->
				</div>
				<div class="payment">
					<h1> Web Payments SDK front-end payment portal </h1>
				</div>
			</div>
		</div>
</body>
</html>