<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="../css/pages/styleCreate.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="main-container">
        <div id="form-container">
            <div id="content">
                <span class="title-text">Registration Form</span>
                <form action="create" id="create-form" method="post">
                    <div class="field">        
                        <input type="text" form="create-form" name="firstName" required />
                        <label>first Name</label>
                        <input type="text" form="create-form" name="lastName" required />
                        <label style="margin-left: 196px;">Last Name</label>
                    </div>

                    <div class="field">        
                        <input type="tel" form="create-form" name="phoneNo" required />
                        <label>Phone Number</label>
                        <input type="email" form="create-form" name="email" required />
                        <label style="margin-left: 196px;">Email</label>
                    </div>
                    
                    <div class="field">        
                        <input type="text" form="create-form" name="username" required />
                        <label>Username</label>
                        <input type="date" id="dob" form="create-form" name="dob" onchange="displayAge(event)" style="width: 30%;" required>
                        - <span id="age"></span>
                    </div>

                    <div class="field">        
                        <input type="password" form="create-form" name="password" min="3" max="15" required />
                        <label>Password</label>
                        <input type="password" id="password1" min="3" max="15" onchange="comparePassword(event)" form="create-form" required />
                        <label style="margin-left: 196px;">Password Verification</label>
                        <div id="password-err"></div>
                    </div>
                    <button type="submit" id="createone">Create One</button>
                </form>
            </div>
        </div>
    </div>
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