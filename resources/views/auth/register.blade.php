<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="./assets/css/style.css">
    <style>
        body, html {
    height: 100%;
    margin: 0;
    font-family: Arial, sans-serif;
}

.form-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
}

.container {
    width: 100%; /* Increase the width */
    max-width: 600px; /* Set a max-width */
    padding: 20px;
    box-shadow: 0 0 15px rgba(0,0,0,0.2);
}

.form-container .container {
    width: 480px;
    padding: 20px;
}

input[type="text"], input[type="email"], input[type="password"] {
    width: 100%; /* Make input fields take full width */
    padding: 10px;
    margin: 10px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

.signup-btn {
    background-color: #f3ab1d;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

.signup-btn:hover {
    opacity: 0.8;
}

    </style>
</head>
<body>

    <div class="form-container">
        <div class="container">
            <div class="div-logo">
                <a href="{{ route('login') }}"><img src="./assets/images/logo.png" alt="Logo" /></a>
            </div>
            <div class="content">
                <h2>SIGN UP TO ACCOUNT</h2>
                <p>Enter Your Email & Password to Login</p>
            </div>
            <form method="POST" action="{{ route('register') }}">
                @csrf
                <div class="form-row">
                    <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" placeholder="Enter your Name" autofocus>
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror

                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Enter your Email" autocomplete="email">
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="form-row">
                    <input type="text" name="firstName" placeholder="User Name" required>
                    <input type="text" name="phonenumber" placeholder="Phone Number" required>
                </div>

                <div class="form-row">
                    <input type="text" name="city" placeholder="City" required>
                    <input type="text" name="state" placeholder="State" required>
                </div>

                <div class="form-row form-btn">
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Enter your Password" required autocomplete="new-password">
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    <span class="toggle-password" onclick="togglePassword('password')">👁</span>
                </div>

                <div class="form-row form-btn">
                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Enter your Confirm Password" required autocomplete="new-password">
                    <span class="toggle-password" onclick="togglePassword('password-confirm')">👁</span>
                </div>

                <div class="extra-options">
                    <label>
                        <input type="radio" name="rememberMe"> Remember Me
                    </label>
                    <a href="#">Forgot Password?</a>
                </div>

                <button type="submit" class="signup-btn">Sign Up</button>
                <div class="text">
                    <p>Already Have an Account? <a href="{{ route('login') }}"> Login Here </a></p>
                </div>
            </form>
        </div>
    </div>

    <script>
        function togglePassword(elementId) {
            var passwordField = document.getElementById(elementId);
            var type = passwordField.getAttribute("type") === "password" ? "text" : "password";
            passwordField.setAttribute("type", type);
        }
    </script>

</body>
</html>
