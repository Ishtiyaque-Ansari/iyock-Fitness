<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="../css/pages/login.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <div id="main-container">
        <div id="form-container">
            <div id="content">
                <span class="title-text">Login</span>
                <form id="login-form" action="/User/login" method="post" onsubmit="return validateForm()">
                    <div class="field">
                        <input type="text" name="username" required>
                        <label>Username</label>
                    </div>
                    <div class="field">
                        <input type="password" name="password" required>
                        <label>Password</label>
                    </div>
                    <div id="action">
                        <label><input type="checkbox">remember me</label>
                        <a href="#" id="forget" style="color: white;
                        font-size: 13px;">Forget Password?</a>
                    </div>
                    <button id="login">Login</button>
                    <div id="signup">Don't have an Account?
                        <a href="../createOne" style="color: white;}">Sign up</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    function validateForm() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        // Perform validation if needed
        if (username.trim() === '' || password.trim() === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter both username and password.',
            });
            return false; // Prevent form submission
        }

        // You can add more validation logic here if needed

        return true; // Allow form submission
    }
    </script>
    
</body>
</html>