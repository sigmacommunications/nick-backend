<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="icon" type="image/x-icon" href="./assets/images/fav.png"> -->
    <title>Login</title>
    <link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
    <section class="signupsec">
        <div class="form-container">
            <div class="container">
                <div class="div-logo">
                    <a href="./index.html"><img src="./assets/images/logo.png" /></a>
                </div>
                <div class="content">
                    <h2>SIGN IN TO ACCOUNT</h2>
                    <p>Enter Your Email & Password to Login</p>
                </div>
                <form action="{{ route('login') }}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                    <div class="form-row">
                      <input type="email" name="email" id="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email">
                      <div class="input-group-append">
                        <div class="input-group-text">
                          <span class="fas fa-envelope"></span>
                        </div>
                      </div>
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        </div>
                    </div>
                    <div class="input-group mb-3">
                    <div class="form-row">
                      <input type="password" id="password" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password">
                      <div class="input-group-append">
                        <div class="input-group-text">
                          <span class="fas fa-lock"></span>
                        </div>
                      </div>
                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        </div>
                    </div>
                    <div class="row">
                      <div class="col-8">
                        <div class="icheck-primary">
                          <input type="checkbox" id="remember">
                          <label for="remember">
                            Remember Me
                          </label>
                        </div>
                      </div>
                      <!-- /.col -->
                      <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block signup-btn">Sign In</button>
                      </div>
                      <!-- /.col -->
                    </div>
                  </form>
            </div>
        </div>
    </section>


    <script>
        function togglePassword() {
            var passwordField = document.getElementById("password");
            var type = passwordField.getAttribute("type") === "password" ? "text" : "password";
            passwordField.setAttribute("type", type);
        }
    </script>

</body>

</html>

