<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<title>The Iyock Fitness </title>
<link href="css/pages/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
		<h1>THE IYOCK FITNESS - ${loginType}</h1>
	<fieldset class="center">
		<table>
			<tr>
				<td>Username :</td>
				<td><input Type="text" name="username"
					placeholder="Enter Username" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input Type="password" name="password"
					placeholder="Enter Password" /></td>
			</tr>
			<tr>
				<td colspan="2"><input class="size" type="button" value="Submit" /></td>
			</tr>
		</table>
		<div>
		<p class="rtext">You don't have any account?<a class="btnsubmit" href="createOne"> create one</a></p>
		</div>
		<br />
		<br />
	</fieldset>
</body>
</html>