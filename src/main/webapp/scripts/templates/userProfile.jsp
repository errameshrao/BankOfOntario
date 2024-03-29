<html>
<head>
    <title>Bank Of Ontario</title>
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
                        <a class="navbar-brand" href="/BackToAdmin"><span class="brandCircle">BOO</span> Bank Of Ontario</a>
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
                <h2>User Profile</h2>
                <hr class="colorgraph">
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Create Date:</label>
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
        <div class="clearfix"></div>
        <div class="row" style="margin-top:10px">
            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-3 col-md-offset-3">
                <label>Address: </label>
            </div>

            <div class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1">
                <label>${User.address.streetNumber} ${User.address.streetName} ${User.address.city}
                    ${User.address.province} ${User.address.country} ${User.address.postalCode}</label>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>

    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
            <div class="text-center">
                <a class="btn btn-primary" role="button" href="/update">
                    Update
                </a>
            </div>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-4">
            <a class="btn btn-lg btn-primary btn-block" role="button"
               href="/BackToAdmin">
                Back
            </a>
        </div>
    </div>
    <div class="clearfix"></div>

    <div class="footerbar-wrapper">
        <div class="container-fluid">
            <div class="footertext text-center">
                <span>&copy; Copyrights 2020. Bank Of Ontario. All Rights Reserved.</span>
            </div>
        </div>
    </div>
</div>
</body>
</html>