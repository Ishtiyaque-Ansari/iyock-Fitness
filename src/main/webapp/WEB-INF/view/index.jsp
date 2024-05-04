<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
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

/* .book-visit {
	background-image:
		url(https://tse1.mm.bing.net/th?id=OIP.I-0vIcjFlckcWoiEPS7RIgHaEo&pid=Api&P=0&h=180);
} */
.carousel-caption {
	margin-bottom: 5rem;
	font-weight: 700;
	font-size: larger;
	font-family: sans-serif;
}

.visit-button {
	border: 2px solid red;
}

.typewriter {
	width: 10ch;
	overflow: hidden;
	animation: typing 2.5s steps(15) infinite alternate-reverse;
}

@keyframes typing {from { width:0ch;
	
}

to {
	width: 15ch;
}

}
to {
	width: 13ch;
}

}
.booked {
	background-image: radial-gradient(circle at center, rgba(42, 46, 64, 0)
		0%, #2a2e40 70%),
		url(http://www.zastavki.com/pictures/originals/2015/Girls_Athletic_girl_bodybuilder_095195_.jpg)
		!important;
	/* height: 40rem;
	width: 70rem; */
}

/* header+* {
	margin-top: 60px;
} */
</style>
</head>
<body class="bg-dark text-white">
	<!-- =====header===== -->
	<header><jsp:include page="temples/Header.jsp"></jsp:include>
	</header>

	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://wallpapercave.com/wp/wp4250286.jpg"
					class="d-block w-100" alt="second-slide">
				<div class="carousel-caption d-none d-md-block"
					style="text-align: center;">
					<h5>The Iyock Fitness</h5>
					<p>One must realise the importance of Fitness and its
						contribution to making our lives better.</p>
					<a class="btn btn-outline-info visit-button" href="Contact-us"
						role="button">Booked visit</a>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://wallpapercave.com/wp/wp2483004.jpg"
					class="d-block w-100" alt="first-slide">
				<div class="carousel-caption d-none d-md-block"
					style="text-align: center;">
					<h5>The Iyock Fitness</h5>
					<p>Our diet should also include whole grains as they help us to
						be Healthy.</p>
					<a class="btn btn-outline-info visit-button " href="Contact-us"
						role="button">Booked visit</a>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://wallpapercave.com/wp/wp9160535.jpg"
					class="d-block w-100" alt="third-slide">
				<div class="carousel-caption d-none d-md-block"
					style="text-align: center">
					<h5>The Iyock Fitness</h5>
					<p>Besides, being physically fit, we must also focus on our
						mental Health.</p>
					<a class="btn btn-outline-info visit-button" href="Contact-us" role="button">Booked
						visit</a>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- crousel end -->
	<!-- Trainer Row Start-->
	<div class="container marketing mt-5">
		<div class="row text-white" style="margin-top: 3rem">
			<h2 class="text-center mb-4">Most Famous Mr Olympia</h2>
			<div class="col-lg-4 text-center">
				<img
					src="http://static2.businessinsider.com/image/580e39f4c52402c9008b6841/arnold-schwarzenegger-says-he-wouldve-run-for-president-in-the-2016-election-if-he-were-eligible.jpg"
					class="bd-placeholder-img rounded-circle" width="140" height="140"
					role="img" aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false" />

				<h2>Arnold Schwarzenegger</h2>
				<p>ARNOLD SCHWARZENEGGER is known all over the globe for his
					many accomplishments: world champion bodybuilder.</p>
				<p>
					<a class="btn btn-secondary" href="Contact-us">Contact Us »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4 text-center">
				<img
					src="http://3.bp.blogspot.com/_L9MAUaB0xFQ/S8Fa-L074fI/AAAAAAAAANY/rYVxr03dTWw/s1600/rc127.jpg"
					width="140" height="140" role="img"
					class="bd-placeholder-img rounded-circle"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false" />

				<h2>Ronnie Coleman</h2>
				<p>The King laid waste to his competition, securing a record
					eight Mr. Olympia titles (tied with Lee Haney) and 26 pro wins.</p>
				<p>
					<a class="btn btn-secondary" href="Contact-us">Contact Us »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4 text-center">
				<img
					src="https://preview.redd.it/lz8atlg4w2b21.png?auto=webp&s=ba3d3f998feffcc9b4535e5b3979355370e4ec4f"
					width="140" height="140" role="img"
					class="bd-placeholder-img rounded-circle"
					aria-label="Placeholder: 140x140"
					preserveAspectRatio="xMidYMid slice" focusable="false" />

				<h2>Chris Bumstead</h2>
				<p>Christopher Adam Bumstead (born 2 February 1995), known by
					his fans as CBum, is a Canadian IFBB Pro League professional
					bodybuilder.</p>
				<p>
					<a class="btn btn-secondary" href="Contact-us">Contact Us »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->

	</div>
	<!-- Trainer Row ENd-->
	<!-- START THE FEATURETTES -->
	<div class="container-fluid">
		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7" style="padding-top: 10rem">
				<h2 class="featurette-heading">
					Arnold Schwarzenegger.<span class="text-muted">It blow your
						mind.</span>
				</h2>
				<p class="lead">ARNOLD SCHWARZENEGGER is known all over the
					globe for his many accomplishments: world champion bodybuilder,
					Hollywood action hero, successful businessman, environmentalist,
					philanthropist, best-selling author, and California's 38th
					Governor.</p>
			</div>
			<div class="col-md-5">
				<img
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500"
					src="http://static2.businessinsider.com/image/580e39f4c52402c9008b6841/arnold-schwarzenegger-says-he-wouldve-run-for-president-in-the-2016-election-if-he-were-eligible.jpg"
					aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false" />

			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 order-md-2" style="padding-top: 10rem">
				<h2 class="featurette-heading">
					Ronnie Coleman <span class="text-muted">For Nearly a Decate.</span>
				</h2>
				<p class="lead">“ The King ” laid waste to his competition,
					securing a record eight Mr. Olympia titles (tied with Lee Haney)
					and 26 pro wins during a career that revolutionized the entire
					sport.</p>
			</div>
			<div class="col-md-5 order-md-1">
				<img
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500"
					src="http://3.bp.blogspot.com/_L9MAUaB0xFQ/S8Fa-L074fI/AAAAAAAAANY/rYVxr03dTWw/s1600/rc127.jpg"
					aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false" />

			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7" style="padding-top: 10rem">
				<h2 class="featurette-heading">
					Chris Bumstead.<span class="text-muted">Mr Olympia 2023.</span>
				</h2>
				<p class="lead">Christopher Adam Bumstead (born 2 February
					1995), known by his fans as CBum, is a Canadian IFBB Pro League
					professional bodybuilder.</p>
			</div>
			<div class="col-md-5">
				<img style="height: 25rem;"
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500"
					src="https://preview.redd.it/lz8atlg4w2b21.png?auto=webp&s=ba3d3f998feffcc9b4535e5b3979355370e4ec4f"
					aria-label="Placeholder: 500x500"
					preserveAspectRatio="xMidYMid slice" focusable="false" />

			</div>
		</div>

		<hr class="featurette-divider">
	</div>

	<!-- 
	<div class="container">
		<div class="row">
			<div class="col-3 mt-4">
				<img style="width:12rem;" class="rounded" alt="Gym Images"
					src="https://res.cloudinary.com/dsmtool-com/image/fetch/if_w_lte_500/w_550/e_improve/if_end/if_w_gt_1600/w_1600/if_end/https://i5.walmartimages.com/asr/bc404e02-9509-4534-abd5-1e79c07d4f5b_1.75d9664f62743478e5a278a6e8952e13.jpeg	">
				<p class="text-center mt-5" style="font-family: FontAwesome;">Your
					clients come to your gym to improve their health and fitness.
					However, if you donât train them to use your equipment correctly,
					they could suffer certain short and long-term injuries.</p>
			</div>
			<div class="col-3 mt-4">
				<img style="width:12rem;" class="rounded" alt="Gym Images"
					src="http://healthy-usa.com/fitness/healthy-45.jpg">
				<p class="text-center mt-5" style="font-family: FontAwesome;">Therefore,
					you should ensure that all new gym members receive a detailed
					induction before they are allowed to use the gym. This will help
					clients get the most out of their membership and exercise safely.
					Youâll also show that your organisation is invested in their
					overall well-being and success.</p>
			</div>
			<div class="col-6 mt-4 mb-4">
				<img style="width: 36rem; height: 33rem;" class="rounded"
					alt="Gym Images"
					src="https://images-na.ssl-images-amazon.com/images/I/81MfpEKzToL._SL1500_.jpg">
			</div>
		</div>
	</div>



	<div class="container booked mb-4 text-white bg-dark">
		<div class="col-xxl-2 text-center">
			<div class="inner-row">
				<div class="this-inner-row pt-5" style="height: 35rem;">
					<div class="this-inner-text-row" style="margin-top: 2rem;">
						<h2
							style="text-decoration: underline; color: brown; font-size: 3rem; font-family: auto;">IYOCK
							FITNESS</h2>
						<h3 style="font-size: 30px; color: brown; font-family: auto;">BIGGER
							. FASTER . STRONGER</h3>
					</div>
					<div class="card mb-3"
						style="max-width: 540px; margin-left: 18rem; margin-top: 4rem;">
						<div class="row g-0">
							<div class="col-md-5">
								<img
									src="https://c.wallhere.com/photos/c3/66/women_Bodybuilder_muscles_rear_view_fitness_model-122543.jpg!d"
									class="img-fluid rounded-start" alt="one day visit image"
									style="height: -webkit-fill-available;">
							</div>
							<div class="col-md-7">
								<div class="card-body text-white bg-dark">
									<h5 class="card-title">Free One Day</h5>
									<p class="card-text">book your visits if you like our gym
										so you can take admission.</p>
									<p class="card-text">
										<small class="text-muted">(online as well as offline)</small>
									</p>
									<a href="Contact-us" class="btn btn-outline-dark">Get Started</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

 -->

	<jsp:include page="temples/LoginModal.jsp"></jsp:include>

	<script type="text/javascript">
	
		window.onload = swal("Good job!",${message}, "success");
		window.onscroll = myFunction
		
		
		function fetchMembership() {
			fetch('/fetchCandidate',{method:'POST', body:1}).then(response=> response.json())
			.then(membersihp=> {
				document.getElementById("admitted").innerText = membersihp.admitted
			})//			
			
		}
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<jsp:include page="temples/footer.jsp"></jsp:include>
	<script src="vendor/css/bootstrap.bundle.min.js"></script>
</body>
</html>