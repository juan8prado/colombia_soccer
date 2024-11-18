<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="Abel OSH">
  <meta name="theme-color" content="#009688">
  <link rel="shortcut icon" href="<?= media();?>/images/favicon.ico">
  <!-- Main CSS-->

  <link rel="stylesheet" type="text/css" href="<?= media();?>/css/login.css">
  <link rel="stylesheet" type="text/css" href="<?= media();?>/css/style.css">
  
  <!-- Swiper CSS -->
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
  
  <title><?= $data['page_tag']; ?></title>
</head>
<body>
  <div class="login-container">
      <!-- Sección de marca con slider -->
      <section class="branding-section">
        <!-- Swiper Slider -->
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 1.jpg" alt="Slide 1"></div>
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 2.jpg" alt="Slide 2"></div>
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 3.jpg" alt="Slide 3"></div>
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 4.jpg" alt="Slide 4"></div>
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 5.jpg" alt="Slide 5"></div>
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 6.jpg" alt="Slide 6"></div>
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 7.jpg" alt="Slide 7"></div>
            <div class="swiper-slide"><img src="<?= media(); ?>/images/imagen 8.jpg" alt="Slide 8"></div>
          </div>
          <!-- Add Pagination -->
          <div class="swiper-pagination"></div>
          <!-- Add Navigation -->
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
        </div>
      </section>

      <!-- Sección de login a la derecha -->
      <section class="login-content">
        <div class="login-box">
          <div id="divLoading">
            <div>
              <img src="<?= media(); ?>/images/loading.svg" alt="Loading">
            </div>
          </div>
          <form class="login-form" name="formLogin" id="formLogin" action="">
            <h3 class="login-head">
              Iniciar Sesi<img src="./Assets/images/balon_login.png" alt="Usuario" class="balon_login">n
            </h3>
            <div class="form-group">
              <!-- <label class="control-label">USUARIO</label> -->
              <input id="txtEmail" name="txtEmail" class="form-control" type="email" placeholder="Email" autofocus>
            </div>
            <div class="form-group">
              <!-- <label class="control-label">CONTRASEÑA</label> -->
              <input id="txtPassword" name="txtPassword" class="form-control" type="password" placeholder="Contraseña">
            </div>
            <div class="form-group">
              <div class="utility">
                <p class="semibold-text mb-2"><a href="#" data-toggle="flip">¿Olvidaste tu contraseña?</a></p>
              </div>
            </div>
            <div id="alertLogin" class="text-center"></div>
            <div class="form-group btn-container">
              <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-sign-in-alt"></i> INICIAR SESIÓN</button>
            </div>
          </form>
          <form id="formRecetPass" name="formRecetPass" class="forget-form" action="">
            <h3 class="login-head">¿<img src="./Assets/images/balon_login_2.png" alt="Usuario" class="balon_login_2">lvidaste la contraseña?</h3>
            <div class="form-group">
              <!-- <label class="control-label">EMAIL</label> -->
              <input id="txtEmailReset" name="txtEmailReset" class="form-control" type="email" placeholder="Email">
            </div>
            <div class="form-group btn-container">
              <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-unlock fa-lg fa-fw"></i>REINICIAR</button>
            </div>
            <div class="form-group mt-3">
              <p class="iniciar_sesion_olidaste_contrasena"><a href="#" data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i> Iniciar sesión</a></p>
            </div>
          </form>
        </div>
      </section>
  </div>

  <script>
      const base_url = "<?= base_url(); ?>";
  </script>
  <!-- Essential javascripts for application to work-->
  <script src="<?= media(); ?>/js/jquery-3.3.1.min.js"></script>
  <script src="<?= media(); ?>/js/popper.min.js"></script>
  <script src="<?= media(); ?>/js/bootstrap.min.js"></script>
  <script src="<?= media(); ?>/js/fontawesome.js"></script>
  <script src="<?= media(); ?>/js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="<?= media(); ?>/js/plugins/pace.min.js"></script>
  <script type="text/javascript" src="<?= media();?>/js/plugins/sweetalert.min.js"></script>
  <script src="<?= media(); ?>/js/<?= $data['page_functions_js']; ?>"></script>
 <!-- Swiper JS -->
 <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function () {
      var swiper = new Swiper('.swiper-container', {
        slidesPerView: 1,
        spaceBetween: 20, // Espacio entre slides
        autoplay: {
          delay: 8000, // Duración de cada slide en milisegundos
          disableOnInteraction: false, // No desactivar el autoplay al interactuar
        },
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        loop: true, // Opcional: Hacer que el slider sea infinito
      });
    });
  </script>
</body>
</html>
