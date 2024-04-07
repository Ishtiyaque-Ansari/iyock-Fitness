<nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
	<div class="container">
		<a class="typewriter navbar-brand nav-button text-white logo" href="index">IYOCK
			FITNESS</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item active"><a
					class="nav-button nav-link text-white" href="index">Home</a></li>
				<li class="nav-item"><a class="nav-button nav-link text-white"
					href="About-us" style="margin-left: 8px; margin-right: 8px;">About
						Us</a></li>
				<li class="dropdown"><a
					class="btn btn-secondary dropdown-toggle nav-button" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"
					style="margin-right: 15px;"> Branches </a>

					<ul class="dropdown-menu" style="width: 28rem;">
						<li><a class="dropdown-item" href="index">Govandi</a></li>
						<li><a class="dropdown-item" href="index">Sanpada</a></li>
						<li><a class="dropdown-item" href="index">Airoli</a></li>
						<li><a class="dropdown-item" href="index">Mira Road</a></li>
						<li><a class="dropdown-item" href="index">Thane</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-button nav-link text-white"
					href="Gallery">Gallery</a></li>
				<li class="nav-item"><a class="nav-button nav-link text-white"
					href="Contact-us">Contact Us</a></li>
				<li><button class="btn btn-link"
						data-bs-toggle="modal" data-bs-target="#exampleModal"
						title="Admission, Log In & Create ">
						<c:out value="${username}" />
						${username == null || username.isEmpty() ? 'Log In<i class="text-danger">+</i>' : username}
						<%-- <%= username == null ? 'Log In<i class="text-danger">+</i>' : username %> --%>
					</button></li>
			</ul>
		</div>
	</div>
</nav>