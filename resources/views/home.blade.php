<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Youtube - плеер</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="css/mdb.min.css">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="css/style.css">
</head>

<body style="background: #3A3939;">

<header class="mt-3">
      <div class="container">
         <div class="navbar md-1 justify-content-between">
             <a href="/" class="navbar-brand text-white">You<span style="color: red;">Tube</span> - плеер</a>
             <ul class="m-0 d-flex">
               <a class="text-white" href="{{ route('logout') }}"  
               onclick="event.preventDefault();
                document.getElementById('logout-form').submit();">
                Выйти
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                 @csrf
                </form>
            </ul> 
         </div>
      </div>
</header>   

<main id="home">
  <div class="container-fluid">
    <div class="row row-cols-1 row-cols-md-3 mt-3">
      @foreach($results as $result)
      <div class="col mb-4">
          <!-- Card -->
          <div class="card z-depth-5">
            <!--Card image-->
            <div class="view overlay">
              <img class="card-img-top" src="{{ $result->video_image }}"
                alt="Card image cap">
              <a href="#!">
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>
            <!--Card content-->
            <div class="card-body">
              <!--Title-->
              <h4 class="card-title">{{ $result->video_title }}</h4>       
              <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
              <div class="col-xl-12 justify-content-between d-flex">
                <a href="/view/{{ $result->video_id }}" class="btn btn-primary btn-md">Посмотреть</a>
                <a href="/favoritedelete/{{ $result->video_id }}" class="btn btn-danger btn-md">Удалить</a>                   
              </div>            
            </div>
          </div>
          <!-- Card -->
      </div>
      @endforeach
    </div>
  </div>
</main>

 <!-- jQuery -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Your custom scripts (optional) -->
  <script type="text/javascript">
    $( document ).ready(function() {
      new WOW().init();
    });
  </script>
</body>
</html>
