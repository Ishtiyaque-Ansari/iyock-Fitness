/**
 * Define paymentStart function
 */
const paymentStart = () => {
	console.log("Payment started..");
	let amount = $("#payment_field").val();
	console.log(amount);
	if (amount == "" || amount == null) {
		swal("failed!", "Amount is required !!", "error");


		return;
	}

	// Perform AJAX request
	$.ajax({
		url: "/payment/create_order",
		data: JSON.stringify({ amount: amount, info: "order_request" }),
		contentType: "application/json",
		type: "POST",
		dataType: "json",
		success: function(response) {
			console.log(response);
			if (response.status == "created") {
				let options = {
					key: "rzp_test_XoGbkBgu4fBcVL",
					amount: response.amount, // Amount in paise (convert to smallest currency unit)
					currency: "INR",
					description: "MemberShip Fees",
					image: "https://static.vecteezy.com/system/resources/previews/018/795/372/original/fitness-and-gym-logo-free-png.png",
					order_id: response.id,
					handler: function(response) {
						console.log(response.razorpay_payment_id);
						console.log(response.razorpay_order_id);
						console.log(response.razorpay_signature);
						console.log("Payment successful !!");
						swal({
							title: "Congratulations!",
							text: "Payment successful!",
							icon: "success",
							buttons: {
								confirm: "OK"
							}
						}).then(() => {
							// Redirect to the index page after the user clicks "OK"
							window.location.href = "/index";
						});

						/*swal("Good job!", "Congratulations! Payment successful !!", "success");*/
						/*$.get("/index", function(response){});*/
						/*$.get("/index", () => window.location.href = "/index");*/
						/*$.get("/index", function(response) {
							// Success callback function
							// Handle the response data here
							console.log("Received response:", response);

							// Wait for 3 seconds before redirecting to the index page
							setTimeout(() => {
								window.location.href = "/index";
							}, 3000); // 3000 milliseconds = 3 seconds
						});*/


						// You can add additional logic here, such as updating your database or UI
					},
					prefill: {
						name: "Gaurav Kumar",
						email: "gaurav.kumar@example.com",
						contact: "9999999999"
					},
					notes: {
						address: "Iyock Fitness",
					},
					theme: {
						color: "#3399cc",
					},
				};

				var rzp = new Razorpay(options);
				rzp.on("payment.failed", function(response) {
					console.log(response.error.code);
					console.log(response.error.description);
					console.log(response.error.source);
					console.log(response.error.step);
					console.log(response.error.reason);
					console.log(response.error.metadata.order_id);
					swal("failed", "oops Payment failed !!", "error");
				});

				rzp.open();
			} else {
				alert("Error creating order. Please try again.");
			}
		},
		error: function(error) {
			console.log(error)
			alert("Something went wrong !!");
		}
	});
};

// Bind paymentStart function to an event, for example, a button click
$(document).ready(function() {
	$("#payment_button").click(paymentStart);
});
