<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create one</title>
<link href="css/pages/styleCreate.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form action="create" id="register" method="post">
		<fieldset>
			<h1>Registration Form</h1>
			<p>Please fill out this form with the required information</p>
		</fieldset>
		<fieldset>
			<label class="block" for="firstname">Enter Your First name : </label>
			<input class="inp" form="register" id="firstname" type="text" name="firstName" placeholder="Enter First Name" required />
			<label class="block" for="lastname">Enter Your Last name : </label>
			<input form="register" id="lastname" type="text" name="lastName" placeholder="Enter Last Name" required />
			<label class="block" for="phoneNo">Enter Your Phone No : </label>
			<input form="register" id="phoneNO" type="tel" name="phoneNo" placeholder="Enter Phone Number" required />
			<label class="block" for="email">Enter Your Email : </label>
			<input form="register" id="email" type="email" name="email" placeholder="Enter Email" required />
			<label class="block" for="username">Enter Your Username : </label>
			<input form="register" id="username" type="text" name="username" placeholder="Enter Username" required />
			<label class="block" for="password">Enter Your password : </label>
			<input form="register" id="password" type="password" name="password" placeholder="Enter Password" required />
			<label class="block" for="password1">Confirm Your Password : </label>
			<input form="register" onchange="comparePassword(event)" id="password1" type="password" placeholder="Password Confirmation" required />
			<div id="password-err"></div>
			<div class="line">
			<label for="dob">Enter Your DOB : </label>
			<input form="register" name="dob" id="dob" type="date" onchange="displayAge(event)" name="birthday" required> Age: 
			<span id="age"></span>
			</div>
		</fieldset>
		<fieldset>
			    <label class="arrange" for="gender">Gender : </label>
		<div class="bloc">
			    <input form="register" id="male" type="radio" value="male" name="gender" /> <label for="male">Male</label>
			    <input form="register" id="female" type="radio" value="female" name="gender" /> <label for="female">Female</label>
		</div>
			<label for="weight" class="arrange" >Weight(lbs) : </label>
			<input class="inp" form="register" id="weight" type="number" name="weight" placeholder="Enter Weight in lbs" required />
			<label for="height" class="arrange">Height(cm) : </label>
			<input class="inp" form="register" id="height" type="number" name="height" placeholder="Enter height in cm(centimeter)" required />
		</fieldset>
		<fieldset>
			<label for="health">Health Condition<i>(optional):</i></label>
            <textarea class="health" form="register" id="health" name="health" placeholder="About your health (eg.excellent)" required></textarea>
		    <label for="address">Address : </label>
		    <textarea class="add" form="register" id="address" placeholder="Address" name="address" required></textarea>
		</fieldset>
			<input form="register" type="submit" value="Submit"/>
	</form>
	<script>
		function displayAge(e) {
			var date = new Date(e.target.value);
        	var today = new Date();

        	var timeDiff = Math.abs(today.getTime() - date.getTime());
        	var age = parseInt(Math.ceil(timeDiff / (1000 * 3600 * 24)) / 365);
 			document.getElementById("age").innerText = age;
		}
		
		function comparePassword(e) {
			console.log("e",e)
			let password1 = e.target.value;
			let password = document.getElementById("password").value;
			if(password1 != password) {
				document.getElementById("password1").style.borderColor = "red";
				document.getElementById("password-err").innerText = "Incorrect Password!!";
			} else {
				document.getElementById("password1").style.borderColor = "green";
				document.getElementById("password-err").innerText = "matched Password!!";
			}
		}
</script>



</body>
</html>