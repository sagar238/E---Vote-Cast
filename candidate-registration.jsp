<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Metas -->
<title>Online Voting System</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body class="host_version">
	<jsp:include page="header.jsp"></jsp:include><br>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">Candidate Registration</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="images/registration.png">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<%
					String candidateRegister = (String) session.getAttribute("success-message");
					if (candidateRegister != null) {
						session.removeAttribute("success-message");
				%>
					<div class="alert alert-success" id="success">Candidate registration successfully.</div>
				<%
					}
				%>
				<div class="panel panel-info">
					<div class="panel-heading">Candidate Account</div>
					<div class="panel-body">
						<form role="form" action="CandidateRegistration" method="post"
								enctype="multipart/form-data">
							<div class="form-group">
								<label>Candidate Id</label>
								<%
									String candidateId = DatabaseConnection.generateCandidateId();
								%>
								<input class="form-control" type="text" value="<%=candidateId%>"
									name="candidateId" readonly />
							</div>
							<div class="form-group">
								<label>Candidate Name</label> <input class="form-control"
									type="text" name="candidateName" />
							</div>
							<div class="form-group">
								<label>Email Id</label> <input class="form-control" type="text"
									name="emailId" onblur="ValidateEmail()"/>
							</div>
							<div class="form-group">
								<label>Mobile No</label> <input class="form-control" type="text"
									name="mobile" id="txtMB"
									onblur="return ValidateMobNumber('txtMB')" />
							</div>
							<div class="form-group">
								<label>Candidate Study Year</label> <input class="form-control" type="text"
									name="studyYear" />
							</div>
							<div class="form-group">
								<label>Candidate Party Name</label> <input class="form-control" type="text"
									name="cpname" />
							</div>
							<div class="form-group">
								<label>Candidate Party Logo</label> <input class="form-control" type="file"
									name="logo" />
							</div>
							<button type="submit" class="btn btn-info" id="btnValidate">Send Request To Admin For
								Registration</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
<script>
	//This function will validate Email.
	function ValidateEmail() {
		var uemail = document.patientRegister.emailId;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (uemail.value.match(mailformat)) {
			document.patientRegister.desc.focus();
			return true;
		} else {
			alert("Please enter valid email id.!");
			uemail.focus();
			return false;
		}
	}

	function ValidateMobNumber(txtMobId) {
		var fld = document.getElementById(txtMobId);
		if (fld.value == "") {
			alert("You didn't enter a phone number.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (isNaN(fld.value)) {
			alert("The phone number contains illegal characters.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (!(fld.value.length == 10)) {
			alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
			fld.value = "";
			fld.focus();
			return false;
		}

	}
</script>
</html>