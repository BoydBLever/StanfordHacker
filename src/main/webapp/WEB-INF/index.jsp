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
/* .header and .centered style the top-most section of the webpage */
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
			<img src="stanfordhacker_main.jpeg" alt="photo" style="width:100%">
		<div class="centered">Stanford Hacker House</div>
		</div>
		
		<div class="welcome">
			<div class="left">
			<h1>To be included: Founder Video</h1>
			</div>
			<div class="right">
			<p>A message to the travelers</p>
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
				<p>List of amenities goes here</p>
			</div>
			<div class="right-container">
				<div class="top-row">3 images go here</div>
				<div class="bottom-row">3 images go here</div>
			</div>
		</div>
		
		<div class="reserve-payment">
			<div class="reserve-payment-container">
				<div class="reserve">
				<h1>Reserve: Check In, Check Out dates</h1>
				</div>
				<div class="payment">
				<h1> Web Payments SDK front-end payment portal </h1>
				</div>
			</div>
		</div>
	</div>
</body>
</html>