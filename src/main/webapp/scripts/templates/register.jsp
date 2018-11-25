<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<div id="wrapper">

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
                        <ul class="nav navbar-nav pull-right">
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as ${loggedInUser.firstName} ${loggedInUser.lastName} <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Change Password</a></li>
                                    <li><a href="#">My Profile</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="#">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div> <!-- /.Top Bar-->

    <!--Registration Form-->
    <div id="workbench" class="container">

        <div class="row" style="margin-top:60px">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <form:form role="form" action="/registerUser" method="POST" modelAttribute="user">
                    <fieldset>
                        <h2>Open New Account </h2>
                        <hr class="colorgraph">
                        <div class="form-group">
                            <form:label path="firstName">Enter First Name</form:label>
                            <form:input type="text" path="firstName" id="firstName" class="form-control input-lg" placeholder="Enter First Name"/>
                        </div>
                        <div class="form-group">
                            <form:label path="lastName">Enter Last Name</form:label>
                            <form:input type="text" path="lastName" id="lastName" class="form-control input-lg" placeholder="Enter Last Name"/>
                        </div>
                        <div class="form-group">
                            <form:label path="email">Enter Email Address</form:label>
                            <form:input type="email" path="email" id="email" class="form-control input-lg" placeholder="Email Address"/>
                        </div>
                        <div class="form-group">
                            <form:label path="password">Enter Password</form:label>
                            <form:input type="password" path="password" id="password" class="form-control input-lg" placeholder="Password"/>
                        </div>

                        <%--<div class="form-group">
                            <form:label>Select User Type</form:label>
                            <select class="form-control input-lg" name="userType" id="userType">
                                <option value="">Select User Type</option>
                                <option value="admin">Admin</option>
                                <option value="normal">Normal</option>
                            </select>
                        </div>--%>

                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-6 col-sm-4 col-md-4">
                                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Register">
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-4">
                                <input type="reset" class="btn btn-lg btn-info btn-block" value="Reset">
                            </div>

                        </div>
                    </fieldset>
                </form:form>
            </div>
        </div>

    </div><!--/.Registration Form-->

    <div class="clearfix"></div>

    <div class="footerbar-wrapper">
        <div class="container-fluid">
            <div class="footertext text-center">
                <span>&copy; Copyrights 2018. Canada Trust. All Rights Reserved.</span>
            </div>
        </div>
    </div>


</div><!-- /.wrapper -->

</body>
</html>