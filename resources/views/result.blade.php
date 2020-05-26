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
<body style="background: #3A3939; height: 100vh">
        

  <!-- Header site -->
<nav class="navbar justify-content-between">
  <form class="form-inline my-1" method="post" action="/result">
  @csrf
    <div class="md-form form-sm my-0">
      <input name="title" class="text-white form-control form-control-sm mr-sm-2 mb-0" type="text" placeholder="Введите запрос..."
        aria-label="Search">
    </div>
    <button class="btn btn-outline-white btn-sm my-0" type="submit">Поиск</button>
  </form>
  <ul class="m-0 d-flex">
    @if (Route::has('login'))
      @auth
       <li class="nav-link">
         <a class="text-white" href="/home">Личный кабинет</a>
       </li>
      @else
       <li class="nav-link">
          <a class="text-white" href="/login">Авторизация</a>
       </li>
         @if (Route::has('register'))
          <li class="nav-link">
            <a class="text-white" href="/register">Регистрация</a>
          </li>
         @endif
      @endauth
    @endif 
  </ul> 
</nav>
  <!-- End Header -->

  <!-- Intro content -->
    <div class="container mt-5">
        <section class="white-text">
          @foreach($results->items as $result)
            <div class="row align-items-center mt-3">
                <div class="col-lg-3 col-sm-2 col-xl-4 col">
                    <div class="overlay rounded z-depth-1-half mb-lg-0 mb-4">
                        <img class="img-fluid" src="{{ $result->snippet->thumbnails->high->url }}" alt="Sample image">
                    </div>
                </div>
                <div class="col-lg-7 col-xl-8">
                    <h4 class="font-weight-bold mb-3">
                        <strong>{{ $result->snippet->title }}</strong>
                    </h4>
                    <p class="white-text">
                        {{ substr($result->snippet->description, 0, 200) }}
                    </p>
                    <p><a class="font-weight-bold">{{ $result->snippet->channelTitle }}</a> {{ $result->snippet->publishedAt }}</p>
                    <a class="btn btn-red btn-md mx-0" href="view/{{ $result->id->videoId }}">
                        Смотреть
                    </a>
                </div>
            </div>
           @endforeach
        </section>
    </div>
  <!-- End Intro -->
           

    
  <!-- jQuery -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Infinite Scroll -->
  <script src="https://unpkg.com/infinite-scroll@3/dist/infinite-scroll.pkgd.min.js"></script>
  <!-- Your custom scripts (optional) -->
  

</body>
</html>




