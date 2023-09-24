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
	margin-top: 60px;
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

	<div class="container-fluid image">
		<div class="text-body">
			<h3 class="text-white" style="padding-left: 7px; padding-top: 10rem;">get
				in touch</h3>
			<h1 class="text-white">CONTACT US</h1>
		</div>
		<div class="button-body">
			<a href="Contact-us" class="btn btn-dark" style="white">Get in touch</a>
		</div>
	</div>

	<div class="container mt-4">
		<div class="row">
			<div class="col-5">
				<h1 class="text-dark text-uppercase">BOOK YOUR VISIt</h1>
				<div class="contacts-input">
					<input class="contact-input mb-2" type="text"
						placeholder="First Name" /> <input class="contact-input mb-2"
						type="text" placeholder="Last Name" /> <input
						class="contact-input mb-2" type="email" placeholder="Gmail" />
					<div class="input-group mb-2" style="width: 100%;">
						<input type="tel" placeholder="Phone No" class="form-control"
							aria-label="Text input with dropdown button"> <select
							class="form-select" aria-label="Default select example">
							<option selected>Branches</option>
							<option value="1">Govandi</option>
							<option value="2">Sanpada</option>
							<option value="3">Airoli</option>
							<option value="4">Mira Road</option>
							<option value="5">Thane</option>
						</select>
					</div>
				</div>
				<a href="#" class="btn btn-outline-dark mb-4"
					style="width: 8rem; margin-left: 72%;">Submit</a>
			</div>
			<div class="col-7"></div>
		</div>
	</div>

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