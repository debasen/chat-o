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
<%@include file="header.jsp" %>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="<c:url value="/resources/img/homePageCarousel1.jpg" />"
								alt="Los Angeles">
							<div class="carousel-caption">
								<h3>Stay Involved</h3>
								<p>Get into the fun!</p>
							</div>
						</div>

						<div class="item">
							<img src="<c:url value="/resources/img/homePageCarousel2.jpg" />"
								alt="Chicago">
							<div class="carousel-caption">
								<h3>Whisper</h3>
								<p>Spread the message of Love</p>
							</div>
						</div>

						<div class="item">
							<img src="<c:url value="/resources/img/homePageCarousel3.jpg" />"
								alt="New york">
							<div class="carousel-caption">
								<h3>Stay Connected</h3>
								<p>Don't get Lost.</p>
							</div>
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

			</div>
			<div class="container col-sm-6">
				<h1>Welcome To Chat-O</h1>
				<p>Chat-O is an Intranet based chatting application that keeps
					the offline people connected. If you want to chat with the people
					connected to the same network, then make an account and Login.
					Start chatting. Have fun.</p>
				<div class="loginButtonSection">
					<button data-toggle="modal" data-target="#loginModal"
						class="btn btn-info">Log In</button>
					<button data-toggle="modal" data-target="#registerModal"
						class="btn btn-info">Register</button>
				</div>
			</div>
		</div>
	</div>


	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>
				<div class="modal-body">
					<form id="loginForm" method="post">
						<div class="form-group" id="emailIdDiv">
							<label for="email-id">Email Id:</label> <input type="email"
								class="form-control" id="email-id" name="email-id"> <span
								id="wrongEmailError" class="help-block" style="display: none">Your
								Email Id is Wrong</span>
						</div>
						<div class="form-group" id="passwordDiv">
							<label for="pwd">Password:</label> <input type="password"
								class="form-control" id="pwd" name="pwd"> <span
								id="wrongPassError" class="help-block" style="display: none">The
								Password Entered is Wrong</span>
						</div>
						<div class="checkbox">
							<label><input type="checkbox"> Remember me</label>
						</div>
						<span>
							<button type="submit" class="btn btn-info">Login</button> <a
							href="forgetPassword.html" class="inline" style="float: right">Forget
								Password?</a>
						</span>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<div id="registerModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Register</h4>
				</div>
				<div class="modal-body">
					<form:form id="registrationForm" action="submitRegistration.html"
						method="post">
						<div class="form-group" id="registrationEmailDiv">
							<label for="email-id">Email Id:</label>
							<form:input type="email" class="form-control" id="email-id"
								path="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" />
							<span id="registrationEmailExists" style="display: none">This
								Email Id is Already Registered</span>
						</div>
						<div class="form-group row">
							<div class="col-sm-6">
								<label for="first-name">First Name:</label>
								<form:input type="text" class="form-control" id="first-name"
									path="firstName" />
							</div>
							<div class="col-sm-6">
								<label for="last-name">Last Name:</label>
								<form:input type="text" class="form-control" id="last-name-id"
									path="lastName" />
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-6">
								<label for="gender">Gender:</label>
								<div class="radio">
									<label><input type="radio" name="gender" value="M" />Male</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="gender" value="F" />Female</label>
								</div>
							</div>
							<div class="col-sm-6">
								<label for="confirm-password">Age:</label>
								<form:input type="number" class="form-control" id="age"
									path="age" name="age" min="0" max="120"/>
							</div>
						</div>
						<span>
							<button type="submit" class="btn btn-primary">Register</button>
						</span>
					</form:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<script>
		$("#loginForm").submit(function(e) {

			var url = "submitLogin.html"; // the script where you handle the form input.
			$.ajax({
				type : "POST",
				url : url,
				data : $("#loginForm").serialize(), // serializes the form's elements.
				success : function(data) {
					if (data == "SUCCESS")
						location.href = "successLogin.html"
					if (data == "FAIL|NO_USER") {
						$("#emailIdDiv").addClass("has-warning");
						$("#wrongEmailError").show();
						$("#passwordDiv").removeClass("has-warning");
						$("#wrongPassError").hide();
					}
					if (data == "FAIL|WRONG_PASS") {
						$("#passwordDiv").addClass("has-warning");
						$("#wrongPassError").show();
						$("#emailIdDiv").removeClass("has-warning");
						$("#wrongEmailError").hide();
					}
				}
			});
			e.preventDefault(); // avoid to execute the actual submit of the form.
		});

		$("#registrationForm #email-id").change(function() {
			$.post('checkRegistrationEmail.html', {
				email : $("#registrationForm #email-id").val()
			}, function(response, status) {
				if (response == "EXISTING_EMAIL") {
					$("#registrationEmailDiv").addClass("has-warning");
					$("#registrationEmailExists").show();
				}
				if (response == "NEW_EMAIL") {
					$("#registrationEmailDiv").removeClass("has-warning");
					$("#registrationEmailExists").hide();
				}
			});
		});
	</script>
</body>
</html>
