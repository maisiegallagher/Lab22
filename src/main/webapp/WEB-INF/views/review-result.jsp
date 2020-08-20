<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Confirmation</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>

	<div class="container">

		<h3 class="display-4"> Thanks for the review!</h3>

		<p>
			Your Name:
			<c:out value="${name}" />
		</p>

		<p>
		Comment: 
		<c:out value="${comment}" />
		</p>

		<p>
		Rating:
		<c:out value="${rating}" />
		</p>

	</div>
	<ul>
		<li><a href="/">Back to homepage</a></li>
	</ul>

</body>
</html>