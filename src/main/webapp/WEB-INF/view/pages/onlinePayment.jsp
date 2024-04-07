<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iyock</title>
<link href="vendor/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script src="vendor/js/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

</head>
<body>
	<h1 style="border: dashed;" class="text-center">Iyock Fitness</h1>

	<input id="payment_field" value='<%=request.getParameter("paymentAmount")%>' disabled
		style="margin-left: 30rem !important; text-align: center; width: 20rem;"
		type="text" class="form-control my-2"/>

	<div class="container text-center">
		<button id="payment_button" style="width: 20rem;"
			class="btn btn-success">Pay for Membership</button>

	</div>

	<!-- Your JavaScript code using jQuery -->
	<script type="text/javascript">
        
	</script>
	<script src="js/onlinePayment.js" type="text/javascript"></script>
</body>
</html>