<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.iyock.gymmanager.util.CommonUtil" %>

<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="../vendor/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- Option 1: Include in HTML -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />

<style>
* {
	margin: 0;
	padding;
	0;
}
</style>

</head>
<body>
	<header>
		<nav class="navbar navbar-dark bg-dark ">
			<div class="container-fluid">
				<a class="navbar-brand text-uppercase">Members</a> <!-- <a
					href="/Admin/trainer" class="btn btn-outline-secondary text-white"
					style="margin-left: 39rem;">Add Trainer<i class="text-danger">+</i></a> -->
				<a href="/Admin/membership"
					class="btn btn-light text-white"
					style="margin-left: inherit; ; margin-right: 1rem;">Add Member<i
					class="text-danger">+</i></a>
				<!-- <form class="d-flex input-group w-auto">
					<input type="search" class="form-control rounded"
						placeholder="Search" aria-label="Search"
						aria-describedby="search-addon" /> <span
						class="input-group-text text-white bg-dark border-0"
						id="search-addon"> <i class="bi bi-search"></i>
					</span>
				</form> -->
			</div>
		</nav>
	</header>
	<%-- <div>
		<c:out value="${memberName}" />
	</div> --%>
	<table class="table table-bordered table-stripted border-dark table-hover mt-1"
		cellSpacing="1">
		<thead>
			<tr>
			
				<th scope="col">Id</th>
				<th scope="col">Name</th>
				<th scope="col">Contact</th>
				<th scope="col">Age</th>
				<th scope="col">Joining Date</th>
				<th scope="col">Package</th>
				<th scope="col">Status</th>
				<th scope="col">Balance</th>
				<th scope="col">Edit</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${memberList}" var="member">
				<tr>
					<td><c:out value="${member.id}" /></td>
					<td><c:out value="${member.firstName} ${member.lastName}" /></td>
					<td><c:out value="${member.phoneNo}" /></td>
					<td><c:out value="${member.getAge()}" /></td>
					<td><c:out value="${member.joiningDate}" /></td>
					<td><c:out value="${member.status}" /></td>
					<td><c:out value="${member.memberShipPackage}" /></td>
					<td><c:out value="${member.memberShipPackage.getPrice()}" /></td>
					<td><button class="btn btn-link" data-bs-toggle="modal" data-bs-target="#editMemeberPopup" onclick='populateMemberPopup(${CommonUtil.getJson(member)})'>edit</button></td>
					<!-- <td><button data-bs-toggle="modal" data-bs-target="#editMemeberPopup" onclick='populateMemberPopup({"id":4202,"firstName":"Mehtab","lastName":"Ansari","username":"mehtabansari","phoneNo":"8097331323","email":"ansarimehtab7@gmail.com","weight":86,"height":180,"health":"Good","address":"Plot No-25/C/2 Road No-12 Near Shane Rehmat Bakery Baiganwadi Go","joiningDate":1711789346011,"dob":825013800000,"age":28,"password":null,"male":null,"gender":"Male","balance":null,"status":"ACTIVE","imageUrl":null,"memberShipPackage":"REGULAR","fullName":"Mehtab Ansari"})'>Update</button></td> -->

					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="editMemeberPopup" class="modal fade" aria-labelledby="editMemeberModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg ">
			<div class="modal-content bg-dark">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Update Member Details</h5>
					<button style="background-color: seashell;" type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="text-center">
					<jsp:include page="../temples/AdmissionEditContent.jsp" />
				</div>
			</div>
		</div>
	</div>
	<script src="../vendor/css/bootstrap.bundle.min.js"></script>
	<script src="../vendor/js/jquery.min.js"></script>
	<script>
	
	function populateMemberPopup(member) {
		console.log("member", member)
		$('#firstName').val(member.firstName);
		$('#lastName').val(member.lastName);
		$('#phoneNo').val(member.phoneNo);
		$('#email').val(member.email);
		$('#gender').val(member.gender);
		$('#dob').val(member.dob);
		$('#weight').val(member.weight);
		$('#height').val(member.height);
		$('#health').val(member.health);
		$('#address').val(member.address);
		$('#memberShipPackage').val(member.memberShipPackage);
		$('#paymentMode').val(member.paymentMode);
		$('#paid').val(member.paid);
		$('#image').val(member.image);
		$('#gymTiming').val(member.gymTiming);
		
		console.log("populateMemeberPopup is called	")
	}
	function createAge(dateString) {
		const birthDate = new Date(dateString.split(' ')[0]);

		// Get the current date
		const currentDate = new Date();

		// Calculate the age
		const ageInMilliseconds = currentDate - birthDate;
		const ageInYears = ageInMilliseconds / (1000 * 60 * 60 * 24 * 365.25); // Approximate days in a year considering leap years
		const age = Math.floor(ageInYears);
		
	}
	</script>
</body>
</html>