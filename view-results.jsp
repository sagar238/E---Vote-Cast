<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="admin-header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Voting Result Party wise</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<!--   Basic Table  -->
					<div class="panel panel-default">
						<div class="panel-heading">Voting Result Party wise</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table">
									<tr>
										<th>Party Name</th>
										<th>Party Total Voting</th>
									</tr>
									<tbody>
										<%
											int voteVachas=0;
											ResultSet countVachas=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvoting where party_name='Vachas'");
											countVachas.next();
											voteVachas=countVachas.getInt(1);
										%>
										<tr>
											<td><b>Vachas</b></td><td><%=voteVachas%></td>
										</tr>
										<%
											int voteCredo=0;
											ResultSet countCredo=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvoting where party_name='Credo'");
											countCredo.next();
											voteCredo=countCredo.getInt(1);
										%>
										<tr>
											<td><b>Credo</b></td><td><%=voteCredo%></td>
										</tr>
										<%
											int UniteReform=0;
											ResultSet countUniteReform=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvoting where party_name='Unite & Reform'");
											countUniteReform.next();
											UniteReform=countUniteReform.getInt(1);
										%>
										<tr>
											<td><b>Unite & Reform</b></td><td><%=UniteReform%></td>
										</tr>
										<%
											int socialLiberation=0;
											ResultSet countsocialLiberation=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvoting where party_name='Socialism & Liberation'");
											countsocialLiberation.next();
											socialLiberation=countsocialLiberation.getInt(1);
										%>
										<tr>
											<td><b>Socialism & Liberation</b></td><td><%=socialLiberation%></td>
										</tr>
										<%
											int equalityJustice=0;
											ResultSet countequalityJustice=DatabaseConnection.getResultFromSqlQuery("select count(*) from tblvoting where party_name='Equality & Justice'");
											countequalityJustice.next();
											equalityJustice=countequalityJustice.getInt(1);
										%>
										<tr>
											<td><b>Equality & Justice</b></td><td><%=equalityJustice%></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- End  Basic Table  -->
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
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>