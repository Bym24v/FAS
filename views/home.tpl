
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
            </ul> <!--end menu --> 

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Saved reports</span>
              <a class="d-flex align-items-center text-muted" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" href="#">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>

            <ul class="nav flex-column mb-2">

              <li class="nav-item">
                <a class="nav-link active" href="#">
                  <span data-feather="database"></span>
                  Android API
                  <span class="badge badge-primary">27</span>
                </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="database"></span>
                  Android API
                  <span class="badge badge-primary">26</span>
                </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="database"></span>
                  Android API
                  <span class="badge badge-primary">25</span>
                </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="database"></span>
                  Android API
                  <span class="badge badge-primary">24</span>
                </a>
              </li>

            </ul> <!-- end save reports -->

            <div class="submenu-sidebar">
              <div class="row">

                <div class="col-sm-4">
                  <a class="nav-link active" href="#">
                    <span data-feather="play"></span>
                  </a>
                </div>

                <div class="col-sm-4">
                  <a class="nav-link" href="#">
                    <span data-feather="stop-circle"></span>
                  </a>
                </div>
                
                <div class="col-sm-4">
                  <a class="nav-link" href="#">
                    <span data-feather="settings"></span>
                  </a>
                </div>

              </div> <!-- end row -->
            </div> <!-- end submenu-sidebar -->

          </div> <!-- end sidebar -->

        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

          <!-- Modal -->
          <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">

                <!-- header -->
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Save DataBase</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div> <!-- end modal header -->

                <!-- body -->
                <div class="modal-body">
                  <form>

                    <!-- Title --> 
                    <div class="form-group">
                      <label for="recipient-name" class="col-form-label">Device:</label><br>
                      <!--<input type="text" class="form-control" id="recipient-name">-->

                      <select id="process">
                        <option value="volvo">Android-Emulator-5444</option>
                        <option value="saab">Saab</option>
                        <option value="opel">Opel</option>
                        <option value="audi">Audi</option>
                      </select>

                    </div>

                    <div class="form-group">
                      <label for="recipient-name" class="col-form-label">Android System:</label><br>
                      <!--<input type="text" class="form-control" id="recipient-name">-->

                      <select id="android-api">
                        <option value="volvo">Google API 27</option>
                        <option value="saab">Google API 26</option>
                        <option value="opel">Google API 25</option>
                        <option value="audi">Google API 24</option>
                      </select>

                    </div>

                    

                    <!-- nota -->
                    <!--<div class="form-group">
                      <label for="message-text" class="col-form-label">Nota:</label>
                      <textarea class="form-control" id="message-text"></textarea>
                    </div>--> <!-- end nota -->

                  </form>
                </div> <!-- end modal body  -->

                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save</button>
                </div> <!-- end modal footer -->

              </div>
            </div>
          </div> <!-- end modal -->


          <!--<canvas class="my-4" id="myChart" width="900" height="380"></canvas>-->

          <h2>Dashboard</h2>      

          <div class="card">

            <!-- header -->
            <div class="card-header alert-danger">
              <h5>E / Activity / 4498</h6>
            </div>

            <div class="card-body">

              <!-- body -->
              <div class="row">
                <div class="col-md-2">
                  <p class="card-title">Priority: <span>E</span></p>
                  <p class="card-text">TAG: <span>Activity</span></p>
                  <p class="card-text">PID: <span>4498</span></p>
                </div>

                <!-- msg -->
                <div class="col-md-10">
                  <p>at com.google.android.apps.gsa.speech.audio.an.run(SourceFile:2)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
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
                  <p class="card-text">PID: 4498</p>
                </div>

                <div class="col-md-10">
                  <p>com.google.android.apps.gsa.shared.util.concurrent.a.ag.run(Unknown Source:4)</p>
                </div>

              </div> <!-- end row -->


            </div><!-- end card-body -->

          </div> <!-- end card -->

          <!--% include('reports.tpl', data=data)-->

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
