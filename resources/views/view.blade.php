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
  <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="{{ asset('css/mdb.min.css') }}">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="{{ asset('css/style.css') }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="{{ asset('js/ajax.js') }}"></script>
</head>
<body style="background: #3A3939; height: 100vh">
        
<style>
      @media (max-width: 767px) {
        .social-buttons .btn {
          padding: 8px 15px;
          margin: 1px;
        }
      }
</style>

  <!-- Header site -->
<nav class="navbar justify-content-between">
  <a href="/" class="navbar-brand text-white">You<span style="color: red;">Tube</span> - плеер</a>
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

  <div class="container mt-3">
    <!--Section: Content-->
    <div class="container-fluid mt-3 mb-5">
      <section style="background-image: url('{{ $results[0]->snippet->thumbnails->high->url}}'); background-repeat: no-repeat; background-size: cover; background-position: center center;">      
        <!-- Modal -->
        <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
          <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                <iframe id="player" class="embed-responsive-item" src="https://www.youtube.com/embed/{{ $results[0]->id }}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
              </div>
            </div>
          </div>
        </div>
        <div class="mask rgba-black-strong py-5">
          <div class="container text-center my-5">
            <h3 class="font-weight-bold text-center white-text pb-2">{{ $results[0]->snippet->title }}</h3>
            <hr class="w-header hr-light my-4">
            <p class="lead text-center white-text pt-2 mb-5">{{ $results[0]->snippet->description }}</p>
            <a id="play" class="btn-floating btn-cyan btn-lg" data-toggle="modal" data-target="#modal1"><i class="fas fa-play"></i></a>
          </div>
        </div>
      </section>
    </div>
<form id="form"> 
    @csrf
    <input type="hidden" value="{{ Auth::id() }}" name="user_id">
    <input type="hidden" value="{{ $results[0]->id }}" name="video_id">
    <input type="hidden" value="{{ $results[0]->snippet->title }}" name="video_title">
    <input type="hidden" value="{{ $results[0]->snippet->thumbnails->high->url}}" name="video_image">

    <div class="col-md-4 col-xl-6">
    @if(Auth::user())
      <button type="submit" class="btn btn-success">Добавить в избранное</button>
    @else
    <p class="font-weight-lighter text-danger">Чтобы добавить видео в избранные, вы должны <a href="/login" class="text-decoration-none">Авторизоваться</a></p>
    @endif
    </div>
  </div>
</form>
  <!-- End Intro -->
           

<!-- jQuery -->
<script type="text/javascript" src="{{ asset('js/jquery.min.js') }}"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="{{ asset('js/popper.min.js') }}"></script>
<!-- Bootstrap core JavaScript -->
<cript type="text/javascript" src="{{ asset('js/bootstrap.min.js') }}"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="{{ asset('js/mdb.min.js') }}"></script>
<!-- Your custom scripts (optional) -->
<script type="text/javascript">

    $('#play').on('click', function (e) {
      e.preventDefault();
      $("#player")[0].src += "?autoplay=1";
      $('#player').show();
      $('#video-cover').hide();
    })
    $('#modal1').on('hidden.bs.modal', function (e) {
      $('#modal1 iframe').attr("src", $("#modal1 iframe").attr("src"));
    });
</script>

</body>
</html>




