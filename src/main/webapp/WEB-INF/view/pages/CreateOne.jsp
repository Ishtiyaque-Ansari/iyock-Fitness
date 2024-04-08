<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create one</title>
<link href="css/pages/styleCreate.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <div id="main-container">
        <div id="form-container">
            <div id="content">
                <span class="title-text">Registration Form</span>
                <form action="User/create" id="create-form" method="post" onsubmit="return checkPasswords()">
                    <div class="field">        
                        <input type="text" form="create-form" name="firstname" required />
                        <label>first Name</label>
                        <input type="text" form="create-form" name="lastName" required />
                        <label style="margin-left: 196px;">Second Name</label>
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
                        <input id="password1" type="password" form="create-form" name="password" required />
                        <label>Password</label>
                        <input type="password" id="password2" form="create-form" name="password1" required />
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
        var dob = new Date(e.target.value);
        var age = new Date().getFullYear() - dob.getFullYear();

        document.getElementById("age").innerText = age;

        setTimeout(function() {
            Swal.fire({
                icon: 'info',
                title: 'Age',
                text: 'Your age is ' + age,
                timer: 2000, // Auto close after 2 seconds
                showConfirmButton: false
            });
        }, 3000); // Display age after 3 seconds
    }


    //dob less then 2006 does'nt print
    document.addEventListener("DOMContentLoaded", function () {
       var maxDate = new Date();
    maxDate.setFullYear(maxDate.getFullYear() - 18);
            
    var minDate = new Date();
    minDate.setFullYear(minDate.getFullYear() + 60);

    var formattedMaxDate = maxDate.toISOString().split('T')[0];
    let formattedMinDate = minDate.toISOString().split('T')[0];
    let dob = document.getElementById("dob");
    dob.setAttribute("max", formattedMaxDate);
            //dob.setAttribute("min", formattedMinDate)
        });
        

    function verifyPassword(password) {
        var pattern = /^(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&+=])(?=\S+$).{8,}$/;

        if (pattern.test(password)) {
            return true;
        } else {
            return false;
        }
    }

    function checkPasswords() {
        var password1 = document.getElementById("password1").value;
        var password2 = document.getElementById("password2").value;

        if (password1 !== password2) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Passwords do not match!'
            });
            return false;
        }

        if (!verifyPassword(password1)) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Password must start with lowercase letters, followed by numbers and special characters, and be at least 8 characters long! example: exampele@123'
            });
            return false;
        }
        
        Swal.fire({
            icon: 'success',
            title: 'Success!',
            text: 'Passwords matched and meet criteria. Proceed with form submission!',
        });
        return true;
    }
    </script>
    
    <!-- <script src="../js/pages/createOne.js" type="text/javascript"></script> -->
</body>
</html>