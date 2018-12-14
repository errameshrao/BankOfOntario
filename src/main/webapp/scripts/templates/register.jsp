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
                <form:form role="form" action="/registerUser" method="POST" modelAttribute="user">
                    <fieldset>
                        <h2>Open New Account </h2>
                        <hr class="colorgraph">
                        <div class="form-group">
                            <form:label path="firstName">Enter First Name</form:label>
                            <form:input type="text" path="firstName" id="firstName" class="form-control input-lg" placeholder="Enter First Name"/>
                            <form:label path="lastName">Enter Last Name</form:label>
                            <form:input type="text" path="lastName" id="lastName" class="form-control input-lg" placeholder="Enter Last Name"/>
                        </div>
                        <div class="form-group">
                            <form:label path="userType">Select User Type</form:label>
                            <select class="form-control input-lg" name="userType" id="userType">
                                <option value="admin">Admin</option>
                                <option value="normal">Normal</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <form:label path="account.balance">Enter Account balance</form:label>
                            <form:input type="text" path="account.balance" id="balance" class="form-control input-lg" placeholder="Account Balance"/>
                        </div>


                        <div class="form-group">
                            <form:label path="account.minimumBalance">Enter Minimum balance</form:label>
                            <form:input type="text" path="account.minimumBalance" id="minimumBalance" class="form-control input-lg" placeholder="Minimum balance"/>
                        </div>

                        <div class="form-group">
                            <form:label path="account.initialBalance">Enter Initial Amount</form:label>
                            <form:input type="text" path="account.initialBalance" id="initialBalance" class="form-control input-lg" placeholder="Account Opening Balance"/>
                        </div>

                        <div class="form-group">
                            <form:label path="account.accountType">Select Account Type</form:label>
                            <select class="form-control input-lg" name="account.accountType" id="accountType">
                                <option value="Saving">Saving</option>
                                <option value="Chequing">Chequing</option>
                                <option value="Current">Current</option>
                            </select>
                        </div>


                        <div class="form-group">
                            <form:label path="account.hasVirtualCreditCard">Virtual Credit Card</form:label>
                            <select class="form-control input-lg" name="account.hasVirtualCreditCard" id="hasVirtualCreditCard">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </div>



                        <div class="form-group">
                            <form:label path="address.streetNumber">Enter Street Number</form:label>
                            <form:input type="text" path="address.streetNumber" id="streetNumber" class="form-control input-lg" placeholder="Enter Street Number"/>
                        </div>

                        <div class="form-group">
                            <form:label path="address.streetName">Enter Street Name</form:label>
                            <form:input type="text" path="address.streetName" id="streetName" class="form-control input-lg" placeholder="Street Name"/>
                        </div>


                        <div class="form-group">
                            <form:label path="address.city">Enter City</form:label>
                            <form:input type="text" path="address.city" id="city" class="form-control input-lg" placeholder="Enter City"/>
                        </div>


                        <div class="form-group">
                            <form:label path="address.province">Enter Province</form:label>
                            <form:input type="text" path="address.province" id="province" class="form-control input-lg" placeholder="Enter Province"/>
                        </div>


                        <div class="form-group">
                            <form:label path="address.country">Enter Country</form:label>
                            <form:input type="text" path="address.country" id="country" class="form-control input-lg" placeholder="Enter Country"/>
                        </div>


                        <div class="form-group">
                            <form:label path="address.postalCode">Enter Postal Code</form:label>
                            <form:input type="text" path="address.postalCode" id="postalCode" class="form-control input-lg" placeholder="Enter Postal Code"/>
                        </div>


                        <div class="form-group">
                            <form:label path="email">Enter Email Address</form:label>
                            <form:input type="email" path="email" id="email" class="form-control input-lg" placeholder="Email Address"/>
                        </div>
                        <div class="form-group">
                            <form:label path="password">Enter Password</form:label>
                            <form:input type="password" path="password" id="password" class="form-control input-lg" placeholder="Password"/>
                        </div>


                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-6 col-sm-4 col-md-4">
                                <input type="submit" class="btn btn-lg btn-primary btn-block" value="Register">
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-4">
                                <input type="reset" class="btn btn-lg btn-info btn-block" value="Reset">
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