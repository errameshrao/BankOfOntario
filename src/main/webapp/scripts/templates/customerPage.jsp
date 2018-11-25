<!DOCTYPE html>
<html>
<head>
    <title>Login Canada Trust</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="/scripts/lib/fonts/fonts.min.css" />

    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <link rel="stylesheet" href="/scripts/lib/css/style.css">

    <script src="/scripts/lib/js/file.js" type="text/javascript"></script>

</head>
<body>
<div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span class="brandCircle">TD</span> Canada Trust</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp" class="">Home</a></li>
                        <li class=" dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class=" dropdown">
                                    <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">View Departments</a>
                                </li>
                                <li><a href="#">Add New</a></li>
                            </ul>
                        </li>
                        <!--<li><a href="addnew.html">User</a></li>-->
                        <li class=" dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Assets <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"></a></li>
                                <li><a href="#">Create User</a></li>
                            </ul>
                        </li>
                        <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Portfolio<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">View Staff</a></li>
                                <li><a href="#">Add New</a></li>
                                <li><a href="#">Bulk Upload</a></li>
                            </ul>
                        </li>
                        <li class=" down"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Statistical Analysis <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Change Time Entry</a></li>
                                <li><a href="#">Report</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as  <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Change Password</a></li>
                                <li><a href="#">My Profile</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="/logoutUser">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div> <!-- /.Top Bar-->

<div class="clearfix"></div>

<div class="container">
    <div class="row" style="margin-top:70px">
        <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
            <h2 class="title">User List</h2>
            <hr class="colorgraph">
        </div>
    </div>

    <!-- <div class="clearfix"></div>

     <div class="row" style="margin-top:20px">
         <div class="search col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
             <input class="form-control" type="text" name="search" placeholder="Search..">
         </div>
     </div>-->

    <div class="clearfix"></div>


    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
            <ul class="list-inline text-muted text-right">
                <li>
                    <a class="btn btn-info" role="button" onclick="">
                        <i class="glyphicon glyphicon-check"></i> Add
                    </a>
                </li>
                <li>
                    <a class="btn btn-danger" role="button" onclick="">
                        <i class="glyphicon glyphicon-remove"></i> Remove
                    </a>
                </li>
                <li>
                    <a class="btn btn-primary" role="button" onclick="">
                        <i class="glyphicon glyphicon-edit"></i> Edit
                    </a>
                </li>
                <!-- <li>
                     <a class="btn btn-danger" role="button" onclick="">
                         <i class="glyphicon glyphicon-trash"></i> Delete
                     </a>
                 </li>-->
            </ul>

        </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
            <table class="table table-bordered table-responsive table-hover table-striped">
                <thead>
                <tr class="bg-primary">
                    <th><input type="checkbox" value=""></th>
                    <th>Name</th>
                    <th>UserType</th>
                    <th>Email</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>John</td>
                    <td>Normal</td>
                    <td>john@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>Mary</td>
                    <td>Admin</td>
                    <td>mary@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>July</td>
                    <td>Normal</td>
                    <td>july@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>John</td>
                    <td>Normal</td>
                    <td>john@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>Mary</td>
                    <td>Admin</td>
                    <td>mary@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>July</td>
                    <td>Normal</td>
                    <td>july@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>John</td>
                    <td>Normal</td>
                    <td>john@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>Mary</td>
                    <td>Admin</td>
                    <td>mary@example.com</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value=""></td>
                    <td>July</td>
                    <td>Normal</td>
                    <td>july@example.com</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
            <div class="text-center">
                <input type="button" value="Save" class="btn btn-sm btn-info" />
            </div>
        </div>
    </div>
</div>


<div class="clearfix"></div>

<div class="footerbar-wrapper">
    <div class="container-fluid">
        <div class="footertext text-center">
            <span>&copy; Copyrights 2018. Canada Trust. All Rights Reserved.</span>
        </div>
    </div>
</div>

</body>
</html>