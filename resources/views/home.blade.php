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
	    <!--First container-->
	    <div class="container-fluid mt-5 pt-5">
            <section class="section">           
                <!--First row-->
                <div class="row wow fadeIn" data-wow-delay="0.4s">
                    <!--First column-->
                    <div class="col-md-12">
                        <div id="mdb-lightbox-ui"></div>
                        <div class="mdb-lightbox">
                          @foreach($results as $result)
                            <figure class="col-md-4">
                                <a href="/view/{{ $result->video_id }}" data-size="1600x1067">
                                    <img src="{{ $result->video_image }}" class="img-fluid">
                                </a>
                                <div class="flex-center rgba-black-strong">
                                  <a href="/view/{{ $result->video_id }}" class="text-white"><button type="button" class="btn btn-outline-info">Посмотреть</button></a>
                                  <a href="/favoritedelete/{{ $result->video_id }}" class="text-white"><button type="button" class="btn btn-outline-danger">Удалить</button></a>
                                </div>
                            </figure>
                          @endforeach
                        </div>         
                    </div>
                    <!--/First column-->
                </div>
                <!--First row-->
            </section>
	    </div>
	    <!--/First container-->
	    </div>
	    <!--/Second container-->
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
