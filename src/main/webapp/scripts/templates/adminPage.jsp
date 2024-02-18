<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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

    <script type="text/javascript">
        function setUserId(id) {
            document.UserList.userId.value=id;
        }

        function deleteUserAccount() {
            if(document.UserList.userId.value==""){
                alert("Please select customer which you want to delete");
                return;
            }
            document.UserList.action="/deleteUser";
            document.UserList.submit();
        }
        function showAccountDetails(id) {
            document.UserList.userId.value=id;
            document.UserList.action="/showAccountInfo";
            document.UserList.submit();
        }

        function editUserInfo() {
            if(document.UserList.userId.value==""){
                alert("Please select customer whose information you want to change");
                return;
            }
            document.UserList.action="/editUserInfo";
            document.UserList.submit();
        }


    </script>


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
                    <a class="navbar-brand" href="/BackToAdmin"><span class="brandCircle">BOO</span> Bank Of Ontario</a>
                </div>
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

    <form name="UserList" method="post" action="">
        <div class="row" style="margin-top:20px">
            <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
                <ul class="list-inline text-muted text-right">
                    <li>
                        <a class="btn btn-info" role="button" href="/openaccount">
                            <i class="glyphicon glyphicon-check"></i> Open New Account
                        </a>
                    </li>
                    <li>
                        <a class="btn btn-danger" role="button" href="javascript:deleteUserAccount()">
                            <i class="glyphicon glyphicon-remove"></i> Delete Existing Account
                        </a>
                    </li>
                    <li>
                        <a class="btn btn-primary" role="button" href="javascript:editUserInfo()">
                            <i class="glyphicon glyphicon-edit"></i> Edit User Information
                        </a>
                    </li>
                    <%--<li>
                        <a class="btn btn-danger" role="button" onclick="">
                            <i class="glyphicon glyphicon-trash"></i> Block Account
                        </a>
                    </li>--%>
                </ul>

            </div>


            <div class="clearfix"></div>

            <input type="hidden" name="userId" id="userId" />
            <div class="row">
                <div class="col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
                    <table class="table table-bordered table-responsive table-hover table-striped">
                        <thead>
                        <tr class="bg-primary">
                            <th></th>
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
                                <td>
                                    <input type="radio" class="Radio" name="id" onclick="javascript:setUserId('${user.id}')">
                                </td>
                                <td nowrap><span><c:out value="${user.createDate}"/></span></td>
                                <td nowrap><span><c:out value="${user.firstName}"/></span></td>
                                <td nowrap><span><c:out value="${user.lastName}"/></span></td>
                                <td nowrap><span><c:out value="${user.userType}"/></span></td>
                                <td nowrap><span><c:out value="${user.email}"/></span></td>
                                <td nowrap><a href="javascript:showAccountDetails('${user.id}')">${user.account.accountNumber}</a></td>
                                <td nowrap><span><c:out value="${user.account.balance}"/></span></td>
                                <td nowrap><span><c:out value="${user.address.streetNumber} ${user.address.streetName} ${user.address.city}
                    ${user.address.province} ${user.address.country} ${user.address.postalCode}"/></span></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
<div class="footerbar-wrapper">
    <div class="container-fluid">
        <div class="footertext text-center">
            <span>&copy; Copyrights 2020. Bank Of Ontario. All Rights Reserved.</span>
        </div>
    </div>
</div>
</html>