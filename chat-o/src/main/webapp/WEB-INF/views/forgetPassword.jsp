<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Recover Password</title>
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
	<%@include file="header.jsp"%>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-4 offset-col-sm-4">
				<form id="recoverPassword.html" method="post">
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
		</div>
	</div>

	<script type="text/javascript">
$("#submit").click(function(){
	$.post('checkRegistrationEmail.html',
		{
			emailId:$("#email-id").val();
		},
		function(response, status){
			if(response!="EXISTING_EMAIL"){
				$("#wrongEmailError").show();
				$("#emailIdDiv").addClass('has-warning');
			}
			else{
				$("#wrongEmailError").hide();
				$("#emailIdDiv").removeClass('has-warning');
			}
		}
	
	);
});
</script>
</body>

</html>