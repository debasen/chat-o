<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>User Management</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="myStyle.css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        /* Remove the navbar's default margin-bottom and rounded borders */
        
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }
        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        
        .row.content {
            height: 620px
        }
        /* Set gray background color and 100% height */
        
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }
        /* Set black background color, white text and some padding */
        
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        
        .loginButtonSection {
            margin-top: 50px;
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {
                height: auto;
            }
        }

    </style>
</head>

<body>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
                <a class="navbar-brand" href="#">Logo</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Projects</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid text-center">
        <div class="row content">
            <div class="col-sm-3 sidenav">
                <p>
                    <a href="#">Link</a>
                </p>
                <p>
                    <a href="#">Link</a>
                </p>
                <p>
                    <a href="#">Link</a>
                </p>
            </div>
            <div class="col-sm-9 text-left">
                <h1>User Management</h1>
                <hr>
                <a href="register.html" class="btn btn-danger"> <span class="glyphicon glyphicon-plus"></span> Add User
                </a>

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Select</th>
                            <th>Soe Id</th>
                            <th>Name</th>
                            <th>Role</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr class="detail-row">
                            <td><input type="checkbox"></td>
                            <td>DS41755</td>
                            <td>Debapriya Sen</td>
                            <td>User</td>
                            <td>
                                <a href="#" class="btn btn-info btn-sm"> <span class="glyphicon glyphicon-pencil"></span> Edit
                                </a>
                            </td>
                            <td>
                                <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteModal"> <span class="glyphicon glyphicon-trash"></span> Delete
                                </a>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div id="deleteModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Confirm</h4>
                </div>
                <div class="modal-body">
                    <p>Are you sure?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default">Yes</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                </div>
            </div>

        </div>
    </div>
    <footer class="container-fluid text-center">
        <p>Footer Text</p>
    </footer>

</body>

</html>
