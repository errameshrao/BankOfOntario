<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Form</title>
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">

            <form class="login100-form validate-form" action="/login" method="post">
					<span class="login100-form-title">
						Customer/Admin Login
					</span>

                <div class="wrap-input100 validate-input" >
                    <input type="text" name="userName" placeholder="Email">

                </div>

                <div class="wrap-input100 validate-input" data-validate = "Password is required">
                    <input class="input100" type="password" name="password" placeholder="Password">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Login
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>