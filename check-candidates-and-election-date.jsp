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
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">Election Candidates & <font color="red">Election Date.: 5th-April-2021</font></h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-primary">
					<div class="panel-heading">Election Candidates</div>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Candidate Id</th>
									<th>Candidate Full Name</th>
									<th>Party Name</th>
									<th>Party Logo</th>
								</tr>
							</thead>
							<%
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcandidate where status='Approved'");
								while (resultset.next()) {
							%>
							<tbody>
								<tr>
									<td><%=resultset.getString("candidate_id")%></td>
									<td><%=resultset.getString("candidate_name")%></td>
									<td><%=resultset.getString("candidate_party_name")%></td>
									<td><image src="uploads/<%=resultset.getString(7)%>" width="100" height="70"></image></td>
								</tr>
							</tbody>
							<%
								}
							%>
						</table>
					</div>
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
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
</html>