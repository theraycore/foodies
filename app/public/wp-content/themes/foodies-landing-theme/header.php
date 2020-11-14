<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <?php wp_head(); ?>
</head>
<body class="<?php echo get_post_field( 'post_name' ) !== 'home'? 'body-alt': '' ?>">

<!-- NavBar -->
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item navbar-logo" href="/">
      Foodies
    </a>
    <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>
  <div id="main-navbar" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="/#section-about-us"> Acerca de </a>
      <a class="navbar-item" href="/#section-restaurants"> Restaurantes </a>
      <a class="navbar-item" href="menu"> Menú </a>
      <a class="navbar-item" href="/#section-contact-us"> Contáctanos </a>
    </div>
  </div>
</nav>
<!-- /NavBar -->

<!-- Hero -->
<section class="hero <?php echo get_post_field( 'post_name' ) !== 'home'? 'hero-alt': '' ?>">
  <div class="hero-body columns">
    <div class="container column">      
      <?php if (get_post_field( 'post_name' ) == 'home') { ?>
        <h1 class="title">
          Un nuevo sabor esta en la ciudad
        </h1>      
        <p>Estamos a punto de descubrir un mundo lleno de sabores y de emociones inigualables.</p>   
        <br>
        <a href="" class='hero-btn'>Encuentranos -></a>   
      <?php } else { ?>
        <h1 class="title <?php echo get_post_field( 'post_name' ) !== 'home'? 'title-alt': '' ?>">
          Cada sabor es una nueva experiencia
        </h1>              
      <?php } ?>
      
    </div>
    <div class="side-image column">
      <figure class="image <?php echo get_post_field( 'post_name' ) !== 'home'? 'image-alt': '' ?>">        
      </figure>
    </div>
  </div>
</section>
<!-- /Hero -->

