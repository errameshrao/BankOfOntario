<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Form</title>
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">

            <form action="/registeruser" method="post" name="userForm">
                <div class="container">
                    <h1>Register</h1>

                    <label ><b>username</b></label>
                    <input type="text" placeholder="Enter user name" name="userName" >

                    <label ><b>first name</b></label>
                    <input type="text" placeholder="Enter first name" name="firstName">

                    <label ><b>lastname</b></label>
                    <input type="text" placeholder="Enter lastname" name="lastName">

                    <label ><b>user type Admin/Normal</b></label>
                    <input type="text" placeholder="Enter user type" name="userType">

                    <br>
                    <label ><b>email</b></label>
                    <input type="text" placeholder="Enter email" name="email">

                    <label><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="password" required>

                    <div >
                        <button type="register" class="button">Register</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>