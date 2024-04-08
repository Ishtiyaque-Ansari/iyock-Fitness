<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>start Payment</title>
<link href="vendor/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script src="vendor/js/jquery.min.js"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

</head>
<body>
	<h1 style="border: dashed;" class="text-center">Iyock Fitness</h1>

	<h3 class="mt-4 mb-2 text-center">Donate Us</h3>

	<input id="payment_field"
		style="margin-left: 30rem !important; text-align: center; width: 20rem;"
		type="text" class="form-control my-2" placeholder="Enter Amount Here" />

	<div class="container text-center">
		<button id="payment_button" style="width: 20rem;"
			class="btn btn-success">Checkout</button>

	</div>

	<!-- Your JavaScript code using jQuery -->
	<script type="text/javascript">
        
	</script>
	<script src="js/StartPayment.js" type="text/javascript"></script>
</body>
</html>