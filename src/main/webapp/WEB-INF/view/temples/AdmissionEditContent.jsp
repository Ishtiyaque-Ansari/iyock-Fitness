<%@page import="com.iyock.gymmanager.type.Package"%>
<form action="${createUrl}" method="post">
	<div class="main-container">
		<div class="form-container">
			<div class="content">
				<h3 class="text-light text-center text-uppercase mt-2"
					style="text-decoration: underline;">${loginType}</h3>
				<div class="container mt-5">
					<div class="row">
						<div class="col-6">
							<h4 class="text-center text-white">Personal information</h4>
							<div class="input-group w-auto mb-3">
								<input class="form-control" id="firstName" type="text" placeholder="First Name"
									name="firstName" required> <input class="form-control"
									type="text" id='lastName' placeholder="Last Name" name="lastName" required>
							</div>

							<div class="input-group w-auto mb-3">
								<input class="form-control" id="phoneNo" type="tel"
									placeholder="Phone Number" name="phoneNo" required> <input
									class="form-control" type="email" id="email" placeholder="Email"
									name="email" required>
							</div>

							<div class="input-group w-auto mb-3">
								<input class="form-control" id="gender" type="text" placeholder="Gender"
									name="gender"> <input id="dob" class="form-control" type="date"
									name="dob">
							</div>

							<div class="input-group w-auto mb-3">
								<input class="form-control" type="number" id="weight" placeholder="Weight"
									name="weight" required> <input class="form-control" id="height"
									type="number" placeholder="Height" name="height" required>
							</div>

							<div class="input-group w-auto mb-3">
								<span style="width: 40%; font-size: 23px;" class="text-white">Health
									Condition :</span> <input id="health" class="form-control" type="text"
									placeholder="Example(Excellent)" name="health" required>
							</div>

							<div class="form-floating">
								<textarea class="form-control"
									placeholder="Leave a comment here" name="address"
									id="address" required></textarea>
								<label for="address">Address</label>
							</div>

						</div>
						<div class="col-6">
							<h4 class="text-center text-white">General information</h4>
							<select id="memberShipPackage" name="memberShipPackage"
								class="form-select form-select mb-3"
								aria-label=".form-select-lg example" required>
								<%
								for (Package pkg : Package.values()) {
								%>
								<option value="<%=pkg.name()%>">
									<%=pkg.name()%> -
									<%=pkg.getPrice()%> for
									<%=pkg.getDuration()%>
								</option>
								<%
								}
								%>

							</select>

							<!-- Button trigger modal -->
							<select class="form-control" name="paymentMode" id="paymentMode" required>
								<option>Payment Mode</option>
								<option value="1">Cash</option>
								<option value="2">Online</option>
							</select>

							<div class="input-group w-auto mb-3 mt-3">
								<input class="form-control" id="paid" type="number"
									placeholder="How much you paid" name="paid" required>
							</div>

							<div class="input-group w-auto mb-3 mt-3">
								<span style="width: 40%; font-size: 23px;" class="text-white">Upload
									Your Image :</span> <input id="image" class="form-control" type="file"
									placeholder="Choose an image" name="image" accept="image/*"
									required>
							</div>

							<select id="gymTiming" name="gymTiming" class="form-select form-select mb-3"
								aria-label=".form-select-lg example" required>
								<option selected>Choose Timing</option>
								<option value="1">Morning (06:00 to 08:00)</option>
								<option value="2">Morning (07:00 to 09:00)</option>
								<option value="3">Morning (08:00 to 10:00)</option>
								<option value="4">Morning (09:00 to 11:00)</option>
								<option value="5">Morning (10:00 to 12:00)</option>
								<option value="6">Evening (05:00 to 07:00)</option>
								<option value="7">Evening (06:00 to 08:00)</option>
								<option value="8">Evening (07:00 to 09:00)</option>
								<option value="9">Evening (08:00 to 10:00)</option>
								<option value="10">Evening (09:00 to 11:00)</option>
								<option value="11">Evening (10:00 to 12:00)</option>
							</select>

							<div class="text-center">
								<button type="submit" id="submitButton"
									class="btn btn-light btn-lg mt-1">Submit</button>
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
					<h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
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
					<img style="width: 17rem; margin-left: 6rem;" alt=""
						src="../images/Barcode.jpeg">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" data-dismiss="modal">Done</button>
				</div>
			</div>
		</div>
	</div>

	<input type="hidden" id="joiningDate" name="joiningDate">
</form>