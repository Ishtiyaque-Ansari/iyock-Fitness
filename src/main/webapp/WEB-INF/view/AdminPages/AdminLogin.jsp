<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="../css/AdminPages/AdminLogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="main-container">
        <div id="form-container">
            <div id="content">
                <span class="title-text">Login</span>
                <form id="login-form" action="login" method="post">
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
                        <a href="create" style="color: white;}">Sign up</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>