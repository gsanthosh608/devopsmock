<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Homepage</title>
    <style type="text/css">
    .btn{
    color: white;
    }
    
    </style>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form action="logining">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">College Name</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#signin">Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#signup">Sign Up</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h2>Welcome to Our College</h2>
        <p>Please sign in or sign up to continue.</p>

        <!-- Sign In Section -->
        <section id="signin">
            <h3>Sign In</h3>
            <form action="/signin" method="post">
                <div class="form-group">
                    <label for="signInUsername">enter id:</label>
                    <input type="number" class="form-control" id="signInUsername" name="id" required>
                </div>
                <div class="form-group">
                    <label for="signInPassword">Password:</label>
                    <input type="text" class="form-control" id="signInPassword" name="passwd" required>
                </div>
                <button type="submit" class="btn btn-primary"><a >Sign In</a> </button>
                
                 <button type="submit" class="btn"><a href="signup.jsp">Don't have an account? Click here</a> </button>
            </form>
        </section>

      
    </div>

    <!-- Bootstrap JS (Optional, for some interactive components) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    </form>
</body>
</html>
