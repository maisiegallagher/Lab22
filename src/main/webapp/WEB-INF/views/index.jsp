
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chef Chuck's Pizza</title>
</head>
<body>
	<div>
		<h1>Welcome to Chef Chucks Pizza!</h1>
	</div>

	<div>
		<h3>Speciality Pizzas:</h3>
		<ul>
			<li><a href="/specialpizza-bbq">Famous BBQ Chicken Pizza</a></li>
			<li><a href="/specialpizza-mac">Macaroni and Cheese Pizza</a></li>
			<li><a href="/specialpizza-brk">Breakfast Pizza</a></li>
		</ul>
	</div>

	<div>
		<h3>Build your own Pizza:</h3>
		<ul>
			<li><a href="/pizzabuilder-form">Customize your order here</a></li>
		</ul>
	</div>

	<div>
		<h3>Want to leave us a review?</h3>
		<ul>
			<li><a href="/review-form">Click here to leave a review</a></li>
		</ul>
	</div>

</body>
</html>