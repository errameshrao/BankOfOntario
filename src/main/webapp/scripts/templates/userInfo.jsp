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
                        <a class="navbar-brand" href="/BackToAdmin"><span class="brandCircle">TD</span> Canada Trust</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav pull-right">
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as ${loggedInUser.firstName} ${loggedInUser.lastName} <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/openChangePassword">Change Password</a></li>
                                    <li><a href="/myProfilePage">My Profile</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="/logoutUser">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div> <!-- /.Top Bar-->

    <!--Registration Form-->
    <div id="workbench" class="container">

        <div class="row" style="margin-top:60px">
            <div class="col-xs-8 col-sm-6 col-md-4 col-sm-offset-2 col-md-offset-3">
                <form:form role="form" action="/updateUserDetails" method="POST">
                    <input type="hidden" name="userId" id="userId" value ="${User.id}" />
                    <fieldset>
                        <h2>Update Customer Information</h2>
                        <div class="row">
                            <hr class="colorgraph">
                            <label path="firstName">First Name: </label>
                            <input type="text" value="${User.firstName}" name="firstName" id="firstName" class="form-control input-lg"
                                   placeholder="Enter First Name">
                        </div>
                        <div class="row">
                            <hr class="colorgraph">
                            <label>Last Name: </label>
                            <input type="text" value="${User.lastName}" name="lastName" id="lastName" class="form-control input-lg"
                                   placeholder="Enter Last Name">
                        </div>
                        <div class="row">
                            <hr class="colorgraph">
                            <label>Email Address: </label>
                            <input type="text" value="${User.email}" name="email" id="email" class="form-control input-lg"
                                   placeholder="Enter E-mail">
                        </div>
                        <div class="row">
                            <hr class="colorgraph">
                            <label>Street Number :</label>
                            <input type="text" value="${User.address.streetNumber}" name="streetNumber" id="streetNumber" class="form-control input-lg"
                                   placeholder="Enter Street Number">
                        </div>

                        <div class="row">
                            <hr class="colorgraph">
                            <label>Street Name :</label>
                            <input type="text" value="${User.address.streetName}" name="streetName" id="streetName" class="form-control input-lg"
                                   placeholder="Enter Street Name">
                        </div>

                        <div class="row">
                            <hr class="colorgraph">
                            <label>City :</label>
                            <input type="text" value="${User.address.city}" name="city" id="city" class="form-control input-lg"
                                   placeholder="Enter city">
                        </div>

                        <div class="row">
                            <hr class="colorgraph">
                            <label>Province :</label>
                            <input type="text" value="${User.address.province}" name="province" id="province" class="form-control input-lg"
                                   placeholder="Enter Province">
                        </div>

                        <div class="row">
                            <hr class="colorgraph">
                            <label>Country :</label>
                            <input type="text" value="${User.address.country}" name="country" id="country" class="form-control input-lg"
                                   placeholder="Enter Country">
                        </div>

                        <div class="row">
                            <hr class="colorgraph">
                            <label>Postal Code :</label>
                            <input type="text" value="${User.address.postalCode}" name="postalCode" id="postalCode" class="form-control input-lg"
                                   placeholder="Enter Postal Code">
                        </div>

                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-6 col-sm-4 col-md-4">
                                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Update">
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-4">
                                <a class="btn btn-lg btn-primary btn-block" role="button"
                                   href="/BackToAdmin">
                                    Back
                                </a>
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