<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Canada Trust</title>
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
                        <a class="navbar-brand" href="/#"><span class="brandCircle">TD</span> Canada Trust</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav pull-right">
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as ${loggedInUser.firstName} ${loggedInUser.lastName} <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/openChangePassword">Change Password</a></li>
                                </ul>
                            </li>
                            <li class=""><a href="/logoutUser">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div> <!-- /.Top Bar-->
    <div id="workbench" class="container">
        <div class="row" style="margin-top:60px">
            <div class="col-xs-12 col-sm-offset-3 col-md-offset-3 col-sm-6 col-md-6">
                <h2>Personal Information:</h2>
                <hr class="colorgraph">
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Account Opening/Update Date:</label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label type="date">${User.createDate}</label>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Name: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label > ${User.firstName} ${User.lastName}</label>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Email Address:</label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.email}</label>
            </div>
        </div>

        <div class="row" style="margin-top:60px">
            <div class="col-xs-12 col-sm-offset-3 col-md-offset-3 col-sm-6 col-md-6">
                <h2>Detailed Address:</h2>
                <hr class="colorgraph">
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Street Number: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.address.streetNumber}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Street Name: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.address.streetName}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>City: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.address.city}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Province: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.address.province}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Country: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.address.country}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Postal Code: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.address.postalCode}</label>
            </div>
        </div>


        <div class="row" style="margin-top:60px">
            <div class="col-xs-12 col-sm-offset-3 col-md-offset-3 col-sm-6 col-md-6">
                <h2>Account Details:</h2>
                <hr class="colorgraph">
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Account Number: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.account.accountNumber}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Account Balance: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.account.balance}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Account Minimum Balance: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.account.minimumBalance}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Account Initial Balance: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.account.initialBalance}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Account Type: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.account.accountType}</label>
            </div>
        </div>


        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Having Credit Card: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <c:choose>
                    <c:when test="${User.account.hasVirtualCreditCard}">
                        <label>Yes</label>
                    </c:when>
                    <c:otherwise>
                        <label>Yes</label>
                    </c:otherwise>
                </c:choose>
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
</div>
</body>
</html>