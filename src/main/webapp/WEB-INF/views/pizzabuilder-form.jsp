<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Pizza Builder</title>
</head>
<body>

<form method="post">

<p>
	<label>Size</label>
	<select size="size">
	<option value="small">Small</option>
	<option value="medium">Medium</option>
	<option value="large">Large</option>
	
	
	</select>
	
	</p>

<p>
	<label>Onions</label>
	<input type="checkbox" name="toppings" value="onions"/>
	<label>Cheese</label>
	<input type="checkbox" name="toppings" value="cheese"/>
	<label>Pepperoni</label>
	<input type="checkbox" name="toppings" value="pepperoni"/>
	<label>Ham</label>
	<input type="checkbox" name="toppings" value="ham"/>
	<label>Green Pepper</label>
	<input type="checkbox" name="toppings" value="greenpepper"/>
	<label>Spinach</label>
	<input type="checkbox" name="toppings" value="spinach"/>
	<label>Pineapple</label>
	<input type="checkbox" name="toppings" value="pineapple"/>
	<label>Anchovies</label>
	<input type="checkbox" name="toppings" value="anchovies"/>
	
	</p>
</form>
</body>
</html>