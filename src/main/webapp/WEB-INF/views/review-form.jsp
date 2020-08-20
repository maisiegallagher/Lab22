<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chef Chuck's Review Page</title>
</head>
<body>
	<div>
		<h2>Leave a Review</h2>
	</div>

	<form action="review-result" method="post">

		<div>
			<p>
				Your Name: <input type="text" name="name" required
					pattern="[A-Za-z]+" minlength="2" maxlength="20" />
			</p>
		</div>
		<div>
			<h4>Comment</h4>
			<textarea name="comment" form="review-form">Enter text here...</textarea>
		</div>
		<div>
			<p>
				<input type="radio" name="rating" value="5" /> <label>5
					(best) - </label> <input type="radio" name="rating" value="4" /> <label>4
					- </label> <input type="radio" name="rating" value="3" /> <label>3
					- </label> <input type="radio" name="rating" value="2" /> <label>2
					- </label> <input type="radio" name="rating" value="1" /> <label>1
					(worst)</label>
			</p>

		</div>

		<button type="submit">Submit Review</button>

	</form>

	<ul>
		<li><a href="/">Back to Homepage</a></li>
	</ul>

</body>
</html>