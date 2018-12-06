<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <%--<div id="navbar" class="navbar-collapse collapse">
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
                    </ul>--%>
                    <ul class="nav navbar-nav pull-right">
                        <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as ${user.firstName} ${user.lastName}<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/openChangePassword">Change Password</a></li>
                                <li><a href="/myProfilePage">My Profile</a></li>
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
                    <a class="btn btn-info" role="button" href="/openaccount">
                        <i class="glyphicon glyphicon-check"></i> Open New Account
                    </a>
                </li>
                <li>
                    <a class="btn btn-danger" role="button" onclick="">
                        <i class="glyphicon glyphicon-remove"></i> Delete Existing Account
                    </a>
                </li>
                <li>
                    <a class="btn btn-primary" role="button" onclick="">
                        <i class="glyphicon glyphicon-edit"></i> Edit Account Information
                    </a>
                </li>
                 <li>
                     <a class="btn btn-danger" role="button" onclick="">
                         <i class="glyphicon glyphicon-trash"></i> Block Account
                     </a>
                 </li>
            </ul>

        </div>
    </div>

    <div class="clearfix"></div>


    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
            <table class="table table-bordered table-responsive table-hover table-striped">
                <thead>
                <tr class="bg-primary">
                    <%--<th><input type="checkbox" value=""></th>--%>
                    <th>Create Date</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>User Type</th>
                    <th>E-mail</th>
                    <th>Account No</th>
                    <th>Account Balance</th>
                    <th>Address</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${userList}">
                <tr>
                    <td nowrap><span><c:out value="${user.createDate}"/></span></td>
                    <td nowrap><span><c:out value="${user.firstName}"/></span></td>
                    <td nowrap><span><c:out value="${user.lastName}"/></span></td>
                    <td nowrap><span><c:out value="${user.userType}"/></span></td>
                    <td nowrap><span><c:out value="${user.email}"/></span></td>
                    <td nowrap>
                        <a href="javascript:openAccountDetails('<c:out value="${user.account.id}"/>')"><span><c:out value="${user.account.accountNumber}"/></span></a>
                        <%--<a href="updateAsset({id:asset.id})" text-decoration="underline" >{{asset.name}}</a>--%>
                    </td>
                    <td nowrap><span><c:out value="${user.account.balance}"/></span></td>
                    <td nowrap><span><c:out value="${user.address.streetNumber} ${user.address.streetName} ${user.address.city}
                    ${user.address.province} ${user.address.country} ${user.address.postalCode}"/></span></td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

<%--    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
            <div class="text-center">
                <input type="button" value="Save" class="btn btn-sm btn-info" />
            </div>
        </div>
    </div>&ndash;%&gt;--%>
</div>
</body>
<div class="footerbar-wrapper">
    <div class="container-fluid">
        <div class="footertext text-center">
            <span>&copy; Copyrights 2018. Canada Trust. All Rights Reserved.</span>
        </div>
    </div>
</div>
</html>