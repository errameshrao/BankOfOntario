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
                <ul class="nav navbar-nav pull-right">
                    <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as ${user.firstName} ${user.lastName}<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/openChangePassword">Change Password</a></li>
                            <li><a href="#">My Profile</a></li>
                            <li><a href="#">Register New Employee</a></li>
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
            <h2 class="title">Admin Panel</h2>
            <hr class="colorgraph">
        </div>
    </div>


    <div class="clearfix"></div>


    <div class="row" style="margin-top:100px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form role="form" action="/changePassword" method="POST">
                <fieldset>
                    <h2>Change</h2>
                    <hr class="colorgraph">
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" name="oldPassword" id="oldPassword" class="form-control input-lg" placeholder="Enter Old Password">
                    </div>
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" name="newPassword" id="newPassword" class="form-control input-lg" placeholder="Enter New Password">
                    </div>
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" name="confirmNewPassword" id="confirmNewPassword" class="form-control input-lg" placeholder="Confirm New Password">
                    </div>
                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <input type="submit" class="btn btn-lg btn-success btn-block" value="Change Password">
                        </div>
                    </div>

                    <div class="row">
                        <div  style="color:red;">
                            ${message}
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

</div>


<div class="footerbar-wrapper">
    <div class="container-fluid">
        <div class="footertext text-center">
            <span>&copy; Copyrights 2018. Canada Trust. All Rights Reserved.</span>
        </div>
    </div>
</div>

</body>
</html>