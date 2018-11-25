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
            </nav>
        </div>
    </div> <!-- /.Top Bar-->

    <!--Login Form-->
    <div id="workbench" class="container">

        <div class="row" style="margin-top:100px">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <form role="form" action="/loginUser" method="POST">
                    <fieldset>
                        <h2>Employee/Customer Login</h2>
                        <hr class="colorgraph">
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input type="email" name="email" id="email" class="form-control input-lg" placeholder="E-mail Address">
                        </div>
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
                        </div>
                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="Log In">
                            </div>
                        </div>
                    </fieldset>
                </form>
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