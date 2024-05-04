<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/pages/Contact-us.css" rel="stylesheet" type="text/css" />
<link href="vendor/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
/* .ms-auto :active {
	text-decoration: underline;
}
 */
.btn {
	font-weight: 600;
	border: groove;
	margin-left: 1rem;
}

.typewriter {
	width: 10ch;
	overflow: hidden;
	animation: typing 2.5s steps(15) infinite alternate-reverse;
}

@keyframes typing {
	from {
	width: 0ch;
	} to {
	width: 15ch;
	}
}


.navbar-brand {
	font-size: 27px;
	box-shadow: 0px 3px 5px gray;
	font-family: cursive;
	color: floralwhite;
}

header+* {
	/* margin-bottom: 1px; */
}

.image {
	background-image: radial-gradient(circle at center, rgba(42, 46, 64, 0)
		0%, #2a2e40 70%),
		url(https://c4.wallpaperflare.com/wallpaper/169/486/515/working-out-fitness-model-sport-wallpaper-preview.jpg)
		!important;
	height: 25rem;
	/* width: 70rem; */
	margin-top: 4rem;
}

.text-body h1 {
	font-weight: 300;
	text-transform: uppercase;
	font-size: 7vw;
	letter-spacing: 0.35em;
	line-height: 1.2em;
	text-align: left;
}

.text-body h3 {
	text-transform: uppercase;
	font-size: 12px;
	letter-spacing: 1.5em;
	line-height: 2.4em;
	text-align: left;
}

.row .col-5 h1 {
	letter-spacing: 12px;
	font-family: fantasy;
}

.contact-input {
	display: block;
	width: 100%;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 0.25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}
</style>
</head>
<body>
	<!-- =====header===== -->
	<header><jsp:include page="../temples/Header.jsp"></jsp:include>
	</header>
	
	<div class="container-fluid image" style="margin-top: 0px;
    padding-top: 11rem;">
		<div class="text-body">
			<h3 class="text-white" style="padding-left: 7px;/*  padding-top: 10rem; */">get
				in touch</h3>
			<h1 class="text-white">CONTACT US</h1>
		</div>
		<div class="button-body">
			<a href="Contact-us" class="btn btn-dark" style="white">Get in touch</a>
		</div>
	</div>

	<main>
		<div class="container py-5">
			<div class="row g-5">
				<!-- Contact Information Block -->
				<div class="col-xl-6">
					<div class="row row-cols-md-2 g-4">
						<div class="aos-item" data-aos="fade-up" data-aos-delay="200">
							<div class="aos-item__inner">
								<div class="bg-light hvr-shutter-out-horizontal d-block p-3">
									<div class="d-flex justify-content-start">
										<i class="fa-solid fa-envelope h3 pe-2"></i> <span class="h5">Email</span>
									</div>
									<span>iyockfitness@gmail.com</span>
								</div>
							</div>
						</div>
						<div class="aos-item" data-aos="fade-up" data-aos-delay="400">
							<div class="aos-item__inner">
								<div class="bg-light hvr-shutter-out-horizontal d-block p-3">
									<div class="d-flex justify-content-start">
										<i class="fa-solid fa-phone h3 pe-2"></i> <span class="h5">Phone</span>
									</div>
									<span>+9137756575, +8451942607</span>
								</div>
							</div>
						</div>
					</div>
					<div class="aos-item mt-4" data-aos="fade-up" data-aos-delay="600">
						<div class="aos-item__inner">
							<div class="bg-light hvr-shutter-out-horizontal d-block p-3">
								<div class="d-flex justify-content-start">
									<i class="fa-solid fa-location-pin h3 pe-2"></i> <span
										class="h5">Office location</span>
								</div>
								<span>PLOT NO. 3,4,5, SECTOR 2, SANPADA (W), BEHIND SANPADA RAILWAY STATION, SANPADA, NAVI-MUMBAI – 400705</span>
							</div>
						</div>
					</div>
					<div class="aos-item" data-aos="fade-up" data-aos-delay="800">
						<div class="mt-4 w-100 aos-item__inner">
							<iframe class="hvr-shadow" width="100%" height="345"
								frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
								src="https://maps.google.com/maps?width=100%25&amp;height=300&amp;hl=en&amp;q=1%20Grafton%20Street,%20Dublin,%20Ireland+()&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
								<a href="https://www.maps.ie/distance-area-calculator.html">measure
									acres/hectares on map</a>
							</iframe>
						</div>
					</div>
				</div>

				<!-- Contact Form Block -->
				<div class="col-xl-6">
					<h2 class="pb-4">One Day Visit</h2>
					<div class="row g-4">
						<div class="col-6 mb-3">
							<label for="exampleFormControlInput1" class="form-label">Fname</label>
							<input name="firstName" type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="Ishtiyaque">
						</div>
						<div class="col-6 mb-3">
							<label for="exampleFormControlInput1" class="form-label">Lname</label>
							<input name="secondName" type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="Ansari">
						</div>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Email</label>
						<input name="email" type="email" class="form-control"
							id="exampleFormControlInput1" placeholder="name@example.com">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Phone</label>
						<input name="phoneNo" type="tel" class="form-control"
							id="exampleFormControlInput1" placeholder="+1234567890">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Branches</label>
						<select class="form-select" aria-label="Default select example">
							<option value="1">Govandi</option>
							<option value="1">Sanpada</option>
							<option value="1">Airoli</option>
							<option value="1">Mira Road</option>
							<option value="1">Thane</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">Message</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3"></textarea>
					</div>
					<button type="button" class="btn btn-dark">Send Message</button>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="../temples/LoginModal.jsp"></jsp:include>
	<script type="text/javascript">
		window.onscroll = function() {
			myFunction()
		};

		// Get the header
		var header = document.getElementById("myHeader");

		// Get the offset position of the navbar
		var sticky = header.offsetTop;

		// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
		function myFunction() {
			if (window.pageYOffset > sticky) {
				header.classList.add("sticky");
			} else {
				header.classList.remove("sticky");
			}
		}
	</script>

	<footer class="text-center text-white mt-2"
		style="background-color: #21081a;">
		<jsp:include page="../temples/footer.jsp"></jsp:include>
	</footer>

	<script src="vendor/css/bootstrap.bundle.min.js"></script>
</body>
</html>