<?php

function bundled_theme_scripts () {
  wp_enqueue_style('main-foodies-theme-css', get_theme_file_uri('/dist/app.css'));

  wp_enqueue_script('main-foodies-theme-js', get_theme_file_uri('/dist/app.js'), NULL, '1.0', true);
}

add_action('wp_enqueue_scripts', 'bundled_theme_scripts');