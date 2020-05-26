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
  
  <header>
      <div class="container-fluid">
        <nav class="nav justify-content-end py-4">
            @if (Route::has('login'))
                @auth
                <a class="nav-link text-white" href="/home">Личный кабинет</a>
            @else
                 <a class="nav-link text-white" href="/login">Авторизация</a>
                @if (Route::has('register'))
                  <a class="nav-link text-white" href="/register">Регистрация</a>
                @endif
                 @endauth
            @endif
          </nav>
      </div>
</header>     

  
  <!-- End Header -->

  <!-- Intro content -->
   <section class="position-relative d-flex h-75 w-100 align-items-center justify-content-center"> 
       <div class="container">
         <div class="col-md-12 text-center text-white justify-content-center align-items-center">
            <div class="col-md-12 text-center text-white">
              <h1 class="animated bounceIn slower">You<span style="color: red;">Tube</span> - плеер</h1>
              <br>
              <p>Поиск видео из You<span style="color: red;">Tube</span></p>
            </div>
            <div class="md-form form-lg">
                <!-- Search form -->
                <form action="/result" method="POST">
                @csrf
                    <input name="title" type="text" id="inputLGEx" class="form-control form-control-lg text-white">
                    <label for="inputLGEx"> Введите ваш запрос...</label>
                    <div class="row justify-content-center">
                        <button class="btn" type="submit">Поиск</button>
                    </div>                 
                </form>
                <!-- End search form -->
              </div>
         </div>
       </div>
   </section>
  <!-- End Intro -->
           
        
  <!-- jQuery -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Your custom scripts (optional) -->
  <script type="text/javascript"></script>

</body>
</html>
