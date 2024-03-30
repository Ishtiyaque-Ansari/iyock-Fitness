<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="../vendor/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="../css/Adminpages/member.css" rel="stylesheet"
	type="text/css" />
<!-- Option 1: Include in HTML -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
* {
	margin: 0;
	padding: 0;
}
</style>

</head>


<body class="bg-dark">
	<form action="/Admin/create" method="post">
		<div class="main-container">
			<div class="form-container">
				<div class="content">
					<h3 class="text-light text-center text-uppercase mt-2"
						style="text-decoration: underline;">Member details</h3>
					<div class="container mt-5">
						<div class="row">
							<div class="col-6">
								<h4 class="text-center text-white">Personal information</h4>
								<div class="input-group w-auto mb-3">
									<input class="form-control" type="text"
										placeholder="First Name" name="firstName" required> <input
										class="form-control" type="text" placeholder="Last Name"
										name="lastName" required>
								</div>

								<div class="input-group w-auto mb-3">
									<input class="form-control" type="tel"
										placeholder="Phone Number" name="phoneNo" required> <input
										class="form-control" type="email" placeholder="Email"
										name="email" required>
								</div>

								<div class="input-group w-auto mb-3">
									<input class="form-control" type="text" placeholder="Gender"
										name="gender"> <input class="form-control"
										type="datetime-local" name="dob">
								</div>

								<div class="input-group w-auto mb-3">
									<input class="form-control" type="number" placeholder="Weight"
										name="weight" required> <input class="form-control"
										type="number" placeholder="Height" name="height" required>
								</div>

								<div class="input-group w-auto mb-3">
									<span style="width: 40%; font-size: 23px;" class="text-white">Health
										Condition :</span> <input class="form-control" type="text"
										placeholder="Example(Excellent)" name="health" required>
								</div>

								<div class="form-floating">
									<textarea class="form-control"
										placeholder="Leave a comment here" name="address"
										id="floatingTextarea" required></textarea>
									<label for="floatingTextarea">Address</label>
								</div>

							</div>
							<div class="col-6">
								<h4 class="text-center text-white">General information</h4>
								<select name="package" class="form-select form-select mb-3"
									aria-label=".form-select-lg example" required>
									<option selected>Choose Membership</option>
									<option value="1">Normal Pass(500-1Month with Cardio
										700)</option>
									<option value="2">Silver Pass(1200-3Months with Cardio
										1500)</option>
									<option value="3">Golden Pass(4500-1year with Cardio
										5000)</option>
								</select>

								<!-- Button trigger modal -->
								<select class="form-control" id="exampleSelect" required>
									<option selected>Payment Mode</option>
									<option value="option1">Cash</option>
									<option value="option2">Online</option>
								</select>
								
								<div class="input-group w-auto mb-3 mt-3">
									<input class="form-control" type="number"
										placeholder="How much you paid" name="paid" required>
								</div>

								<div class="input-group w-auto mb-3 mt-3">
									<span style="width: 40%; font-size: 23px;" class="text-white">Upload
										Your Image :</span> <input class="form-control" type="file"
										placeholder="Choose an image" name="image" accept="image/*" required>
								</div>

								<select class="form-select form-select mb-3"
									aria-label=".form-select-lg example" required>
									<option selected>Choose Timing</option>
									<option value="1">Morning (06:00 to 08:00)</option>
									<option value="1">Morning (07:00 to 09:00)</option>
									<option value="1">Morning (08:00 to 10:00)</option>
									<option value="1">Morning (09:00 to 11:00)</option>
									<option value="2">Morning (10:00 to 12:00)</option>
									<option value="3">Evening (05:00 to 07:00)</option>
									<option value="3">Evening (06:00 to 08:00)</option>
									<option value="3">Evening (07:00 to 09:00)</option>
									<option value="3">Evening (08:00 to 10:00)</option>
									<option value="3">Evening (09:00 to 11:00)</option>
									<option value="3">Evening (10:00 to 12:00)</option>
								</select>

								<div class="text-center">
									<button type="submit" class="btn btn-light btn-lg mt-1">Add
										Member</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Modal
							title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">...</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal" tabindex="-1" role="dialog" id="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Payment Bar Code</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<img style="with: 4rem" alt="" src="../images/Barcode.jpeg">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal">Done</button>
					</div>
				</div>
			</div>
		</div>

		<script>
			// JavaScript to open modal on select change
			$(document).ready(function() {
				$('#exampleSelect').change(function() {
					// Get the selected value
					var selectedOption = $(this).val();

					// Check the selected value and open the modal accordingly
					if (selectedOption === 'option2') {
						$('#myModal').modal('show');
					}
				});
			});
		</script>
	</form>
</body>
</html>