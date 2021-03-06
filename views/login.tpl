
<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Fuzzing System Android">
    <meta name="author" content="FAS">

    <title>FAS | Login</title>

    <!-- Bootstrap core CSS -->
    <link href="http://localhost:8000/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://localhost:8000/static/css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">

    <form action="/login" method="POST" class="form-signin">
      <h1 id="txt" class="h3 mb-3 font-weight-normal">FAS | Login</h1>

      <label class="sr-only">Username</label>
      <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>

      <label class="sr-only">Password</label>
      <input type="password" name="password" class="form-control" placeholder="Password" required>

      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      <p class="mt-5 mb-3 text-muted">&copy; FAS 2017-2018</p>
    </form>


  </body>
</html>
