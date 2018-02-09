
<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Fuzzing System Android">
    <meta name="author" content="FAS">

    <title>FAS | Home</title>

    <!-- Bootstrap core CSS -->
    <link href="http://localhost:8000/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://localhost:8000/static/css/dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">FAS Beta</a>
      <input id="search" class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <form action="/logout" method="POST" class="form-signin">
            <!--<a class="nav-link" type="submit">Sign out</a>-->
            <button class="btn btn btn-outline-primary btn-block" type="submit">Logout</button>
          </form>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="#">
                  <span data-feather="home"></span>
                  Dashboard <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="bar-chart-2"></span>
                  Reports
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="layers"></span>
                  Integrations
                </a>
              </li>
            </ul>

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Saved reports</span>
              <a class="d-flex align-items-center text-muted" href="/">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Current month
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Last quarter
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Social engagement
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Year-end sale
                </a>
              </li>
            </ul>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <!--<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">Dashboard</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                <button class="btn btn-sm btn-outline-secondary">Share</button>
                <button class="btn btn-sm btn-outline-secondary">Export</button>
              </div>
              <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                This week
              </button>
            </div>
          </div>-->

          <!--<canvas class="my-4" id="myChart" width="900" height="380"></canvas>-->

          <h2>Dashboard</h2>      

          <div class="card">

            <div class="card-header alert-danger">
              <h5>E / Activity / 4498</h6>
            </div>

            <div class="card-body">
      
              <div class="row">
                <div class="col-md-2">
                  <p class="card-title">Priority: <span>E</span></p>
                  <p class="card-text">TAG: Activity</p>
                </div>

                <div class="col-md-10">
                  <p>Stack OwerFlow</p>
                </div>

              </div> <!-- end row -->


            </div><!-- end card-body -->

          </div> <!-- end card -->


          <div class="card">

            <div class="card-header alert-success">
              <h5>E / Activity / 4498</h6>
            </div>

            <div class="card-body">
      
              <div class="row">
                <div class="col-md-2">
                  <p class="card-title">Priority: <span>E</span></p>
                  <p class="card-text">TAG: Activity</p>
                </div>

                <div class="col-md-10">
                  <p>Stack OwerFlow</p>
                </div>

              </div> <!-- end row -->


            </div><!-- end card-body -->

          </div> <!-- end card -->
          
        </main> <!-- end main -->
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="http://localhost:8000/static/js/jquery-slim.min.js"><\/script>')</script>
    <script src="http://localhost:8000/static/js/popper.min.js"></script>
    <script src="http://localhost:8000/static/js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="http://localhost:8000/static/js/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Filter Table -->
    <script>
    $(document).ready(function(){
        $("#search").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#card-find p").filter(function() {
            //$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
    </script>
    
  </body>
</html>
