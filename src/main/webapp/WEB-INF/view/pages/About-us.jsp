<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/pages/about-us.css" rel="stylesheet" type="text/css" />
<link href="vendor/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
.ms-auto :active {
	text-decoration: underline;
}

.btn {
	font-weight: 600;
	color: gainsboro;
	text-decoration: underline;
	border: groove;
	margin-left: 1rem;
}

.navbar-brand {
	font-size: 27px;
	box-shadow: 0px 3px 5px gray;
	font-family: cursive;
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


/* header+* {
	margin-top: 80px;
} */

.image {
	background-image: radial-gradient(circle at center, rgba(42, 46, 64, 0)
		0%, #2a2e40 70%), url(https://wallpapercave.com/wp/wp8834037.jpg)
		!important;
	height: 40rem;
	width: 70rem;
	margin-top: 5rem;
}

.image-text {
	text-decoration: underline;
}

.text-body h3 {
	text-transform: uppercase;
	font-size: 12px;
	letter-spacing: 1.5em;
	line-height: 2.4em;
	text-align: right;
}

.text-body h1 {
	font-weight: 300;
	text-transform: uppercase;
	font-size: 7vw;
	letter-spacing: 0.35em;
	line-height: 1.2em;
	text-align: right;
}

.button-body a {
	margin-left: 60rem;
	margin-top: 15px;
}

.row .col h3 {
	font-family: 'Oswald', Helvetica, Arial, Lucida, sans-serif;
	text-transform: uppercase;
	font-size: 17px;
	letter-spacing: 3px;
	line-height: 1.8em;
}
</style>
</head>
<body>
	<!-- =====header===== -->
	<header><jsp:include page="../temples/Header.jsp"></jsp:include>
	</header>

	<div class="container image rounded" style="padding-top: 7rem;
    margin-top: 0;">
		<div class="text-body">
			<h1 class="text-white">About Us</h1>
			<h3 class="text-white">Since 2023</h3>
		</div>
		<div class="button-body">
			<a href="#" class="btn btn-outline-dark">Join Today</a>
		</div>
		<div class="row">
			<div class="col-5"></div>
			<div class="col-7">
				<h3 class="text-dark text-center" style="margin-top: 9rem; background-color: white;">We launched india's most texhnically advanced fitness
					lounge in Govandi(E), Mumbai spread over 1,200 sq. ft. equipped with
					50+ exercide stations, curanted from 11 of the world's best
					manufactures.</h3>
			</div>
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