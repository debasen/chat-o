<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/template.css" />">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="container-fluid">
		<div class="content">
			<h1>Task Management Tool</h1>
			<br />
			<p>Manage your Users, Deployment, Tasks from one place.</p>
			<p>To see your Dashboard, Log in. Or Register using the following
				links below.</p>
			<hr>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Gender</th>
							<th>Age</th>
							<th>Email</th>
							<th>Password</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${list}">
							<tr>
								<td>${user.firstName}</td>
								<td>${user.lastName}</td>
								<td>${user.gender}</td>
								<td>${user.age}</td>
								<td>${user.emailId}</td>
								<td>${user.password}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>



</body>
</html>
