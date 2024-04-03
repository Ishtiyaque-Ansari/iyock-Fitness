<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Iyock Fitness & Gym</title>
<link href="../vendor/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="../css/Adminpages/member.css" rel="stylesheet"
	type="text/css" />
<!-- Option 1: Include in HTML -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
* {
	margin: 0;
	padding: 0;
}
</style>

</head>


<body class="bg-dark">
<jsp:include page="../temples/AdmissionEditContent.jsp" />  
	
	<script>
			// JavaScript to open modal on select change
			$(document).ready(function() {
				$('#exampleSelect').change(function() {
					// Get the selected value
					var selectedOption = $(this).val();

					// Check the selected value and open the modal accordingly
					if (selectedOption === 'option2') {
						$('#myModal').modal('show');
					}
				});
			});
			
			//submit button click and joining date print
		document.getElementById('submitButton').addEventListener('click', function() {
        document.getElementById('joiningDate').value = new Date().toISOString();
    });
		</script>
</body>
</html>