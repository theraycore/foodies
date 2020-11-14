<?php

/**
 * Register Styles and Scripts into WP Theme
 */
add_action('wp_enqueue_scripts', 'bundled_theme_scripts');

function bundled_theme_scripts () {
  wp_enqueue_style('main-foodies-theme-css', get_theme_file_uri('/dist/app.css'));

  wp_enqueue_script('main-foodies-theme-js', get_theme_file_uri('/dist/app.js'), NULL, '1.0', true);
}


/**
 * API Scrapping and Location Custom Post Type
 */
add_action('init', 'register_location_cpt');

function register_location_cpt () {
  register_post_type('location', [
    'label'           =>  'Foodie Locations',
    'public'          =>  true,
    'capability_type' =>  'post'
  ]);
}

add_action('wp_ajax_nopriv_get_locations_from_api', 'get_locations_from_api');
add_action('wp_ajax_get_locations_from_api', 'get_locations_from_api');
function get_locations_from_api () {
  $locationTypes = ['takeaway', 'delivery'];
  
  foreach ($locationTypes as $locationType) {
    $tmpResult = wp_remote_retrieve_body(
      wp_remote_get("https://api.elaniin.dev/api/locations?type=$locationType")
    );

    $tmpResult = json_decode($tmpResult);       
    if (!is_array($tmpResult->data) || empty($tmpResult)) {
      continue;
    }

    $tmpLocations = $tmpResult->data;
    foreach ($tmpLocations as $tmpLocation) {
      $locationSlug = sanitize_title($tmpLocation->name.'-'.$tmpLocation->id);

      $existingLocation = get_page_by_path($locationSlug, 'OBJECT', 'location');

      if ($existingLocation === null) {
        $insetedLocation = wp_insert_post([
          'post_name'   =>  $locationSlug,
          'post_title'  =>  $locationSlug,
          'post_type'   =>  'location',
          'post_status' =>  'publish'
        ]);

        if (is_wp_error($insetedLocation)) {
          continue;
        }

        $fillable = [
          'field_5faff9738c4d2' =>  'name',
          'field_5faff9ac8c4d3' =>  'opening_time',
          'field_5faff9cd8c4d4' =>  'closing_time',
          'field_5faff9d88c4d5' =>  'address',
          'field_5faff9e48c4d6' =>  'latitude',
          'field_5faff9f48c4d7' =>  'longitude',
          'field_5faffa048c4d8' =>  'type'
        ];

        foreach ($fillable as $key => $name) {
          update_field($key, $tmpLocation->$name, $insetedLocation);
        }
      } else {
        $existingLocationId = $existingLocation->ID;
        
        $fillable = [
          'field_5faff9738c4d2' =>  'name',
          'field_5faff9ac8c4d3' =>  'opening_time',
          'field_5faff9cd8c4d4' =>  'closing_time',
          'field_5faff9d88c4d5' =>  'address',
          'field_5faff9e48c4d6' =>  'latitude',
          'field_5faff9f48c4d7' =>  'longitude',
          'field_5faffa048c4d8' =>  'type'
        ];

        foreach ($fillable as $key => $name) {
          update_field($key, $tmpLocation->$name, $existingLocationId);
        }
      }
    }

  }


}


/**
 * API Scrapping and Categories Custom Post Type
 */
add_action('init', 'register_categories_cpt');

function register_categories_cpt () {
  register_post_type('categorie', [
    'label'           =>  'Foodie Categories',
    'public'          =>  true,
    'capability_type' =>  'post'
  ]);
}

add_action('wp_ajax_nopriv_get_categories_from_api', 'get_categories_from_api');
add_action('wp_ajax_get_categories_from_api', 'get_categories_from_api');
function get_categories_from_api () {

  $tmpResult = wp_remote_retrieve_body(
    wp_remote_get("https://api.elaniin.dev/api/categories")
  );

  
  $tmpResult = json_decode($tmpResult);       
  if (!is_array($tmpResult->data) || empty($tmpResult)) {
    return false;
  }

  $tmpCategories = $tmpResult->data;
  foreach ($tmpCategories as $tmpCategorie) {
    $categorieSlug = sanitize_title('cat-'.$tmpCategorie->id);

    $existingCategorie = get_page_by_path($categorieSlug, 'OBJECT', 'categorie');

    if ($existingCategorie === null) {
      $insetedCategorie = wp_insert_post([
        'post_name'   =>  $categorieSlug,
        'post_title'  =>  $categorieSlug,
        'post_type'   =>  'categorie',
        'post_status' =>  'publish'
      ]);

      if (is_wp_error($insetedCategorie)) {
        continue;
      }

      $fillable = [
        'field_5fb00a3441aeb' =>  'name', 
        'field_5fb00e50bf8a9' =>  'id',
      ];

      foreach ($fillable as $key => $name) {
        update_field($key, $tmpCategorie->$name, $insetedCategorie);
      }
    } else {
      $existingCategorieId = $existingCategorie->ID;
      
      $fillable = [
        'field_5fb00a3441aeb' =>  'name',
        'field_5fb00e50bf8a9' =>  'id',
      ];

      foreach ($fillable as $key => $name) {
        update_field($key, $tmpCategorie->$name, $existingCategorieId);
      }
    }
  }

}


/**
 * API Scrapping and Menu Custom Post Type
 */
add_action('init', 'register_menu_cpt');

function register_menu_cpt () {
  register_post_type('menu', [
    'label'           =>  'Foodie Menus',
    'public'          =>  true,
    'capability_type' =>  'post'
  ]);
}

function getAllCategories () {  
    $resultArray = [];

    $args = [
      'post_type' =>  'categorie',
      'order'     =>  'DESC'
    ];

    $the_query = new WP_QUERY($args);
    if ($the_query->have_posts()) :
      while($the_query->have_posts()):
        $the_query->the_post();

        $categorySlug = get_post_field( 'post_name' );
        $existingCategorie = get_page_by_path($categorySlug, 'OBJECT', 'categorie');

        $resultArray[] = [
          'id'    =>  $existingCategorie->id,
          'name'  =>  $existingCategorie->name
        ];        
      endwhile;
      wp_reset_postdata();
    endif;

    return $resultArray;
}

add_action('wp_ajax_nopriv_get_menus_from_api', 'get_menus_from_api');
add_action('wp_ajax_get_menus_from_api', 'get_menus_from_api');
function get_menus_from_api () {
  $current_page = (!empty($_POST['current_page']))? $_POST['current_page']: 1;
  
  $tmpResult = wp_remote_retrieve_body(
    wp_remote_get("https://api.elaniin.dev/api/menu?page=$current_page")
  );  
  
  $tmpResult = json_decode($tmpResult);       
  if (!is_array($tmpResult->data) || empty($tmpResult)) {
    return false;
  }

  $tmpMenus = $tmpResult->data;
  foreach ($tmpMenus as $tmpMenu) {
    $menuSlug = sanitize_title($tmpMenu->name.'-'.$tmpMenu->id);

    $existingMenu = get_page_by_path($menuSlug, 'OBJECT', 'categorie');

    if ($existingMenu === null) {
      $insetedMenu = wp_insert_post([
        'post_name'   =>  $menuSlug,
        'post_title'  =>  $menuSlug,
        'post_type'   =>  'menu',
        'post_status' =>  'publish'
      ]);

      if (is_wp_error($insetedMenu)) {
        continue;
      }

      $fillable = [
        'field_5fb017415b335' =>  'name',        
        'field_5fb0175b5b336' =>  'image',        
        'field_5fb0176d5b337' =>  'description',        
        'field_5fb0177c5b338' =>  'price',        
        'field_5fb017875b339' =>  'category',        
      ];

      foreach ($fillable as $key => $name) {
        update_field($key, $tmpMenu->$name, $insetedMenu);
      }
    } else {
      $existingMenuId = $existingMenu->ID;
      
      $fillable = [
        'field_5fb017415b335' =>  'name',        
        'field_5fb0175b5b336' =>  'image',        
        'field_5fb0176d5b337' =>  'description',        
        'field_5fb0177c5b338' =>  'price',        
        'field_5fb017875b339' =>  'category',
      ];

      foreach ($fillable as $key => $name) {
        update_field($key, $tmpMenu->$name, $existingMenuId);
      }
    }
  }

  // Recursive Call Unless there is no more Menus in the API
  $current_page = $current_page + 1;
  wp_remote_post(admin_url('admin-ajax.php?action=get_menus_from_api'), [
    'blocking'  =>  false,
    'sslverify' =>  false,
    'body'      =>  [
      'current_page'  =>  $current_page
    ]
  ]);

}

/**
 * Message Custom Post Type
 */
add_action('init', 'register_message_cpt');

function register_message_cpt () {
  register_post_type('message', [
    'label'           =>  'Foodie Contact Us Messages',
    'public'          =>  true,
    'capability_type' =>  'post'
  ]);
}

/**
 * Wordpress Rest API
 */

// Get Locations
add_action('wp_ajax_nopriv_get_locations', 'get_locations');
add_action('wp_ajax_get_locations', 'get_locations');
function get_locations () {
  $locationType = $_GET['type'];

  $resultArray = [];

    $args = [
      'post_type' =>  'location',
      'order'     =>  'DESC'
    ];

    $the_query = new WP_QUERY($args);
    if ($the_query->have_posts()) :
      while($the_query->have_posts()):
        $the_query->the_post();

        $locationSlug = get_post_field( 'post_name' );
        $existingLocation = get_page_by_path($locationSlug, 'OBJECT', 'location');

        if ($existingLocation->type == $locationType) {
          $resultArray[] = [
            'id'            =>  $existingLocation->id,
            'name'          =>  $existingLocation->name,
            'opening_time'  =>  $existingLocation->opening_time,
            'closing_time'  =>  $existingLocation->closing_time,
            'address'       =>  $existingLocation->address,
            'latitude'      =>  $existingLocation->latitude,
            'longitude'     =>  $existingLocation->longitude,
          ];
          
        }

      endwhile;
      wp_reset_postdata();
    endif;

    echo utf8_encode(json_encode($resultArray));

    wp_die();
}

// Save Messages
add_action('wp_ajax_nopriv_post_messages', 'post_messages');
add_action('wp_ajax_post_messages', 'post_messages');
function post_messages() {  
  $name = $_POST['txt_name'];
  $email = $_POST['txt_email'];
  $message = $_POST['txt_message'];

  $messageSlug = sanitize_title($email.'-'.rand());

  $insertedMessage = wp_insert_post([
    'post_name'   =>  $messageSlug,
    'post_title'  =>  $messageSlug,
    'post_type'   =>  'message',
    'post_status' =>  'publish'
  ]);

  if (is_wp_error($insertedMessage)) {
    echo json_encode([
      'result' => 'error',      
    ]);
    die();
  }

  $fillable = [
    'field_5fb03f9949275' =>  $name,        
    'field_5fb03fa849276' =>  $email,        
    'field_5fb03fb249277' =>  $message,                
  ];

  foreach ($fillable as $key => $value) {
    update_field($key, $value, $insertedMessage);
  }

  echo json_encode([
    'result' => 'success',
  ]);
  die();
}

// Get Menus
add_action('wp_ajax_nopriv_get_menus', 'get_menus');
add_action('wp_ajax_get_menus', 'get_menus');
function get_menus () {
  $locationType = $_GET['type'];

  $resultArray = [];

    $args = [
      'post_type' =>  'menu',
      'order'     =>  'DESC'
    ];

    $the_query = new WP_QUERY($args);
    if ($the_query->have_posts()) :
      while($the_query->have_posts()):
        $the_query->the_post();

        $menuSlug = get_post_field( 'post_name' );
        $existingMenu = get_page_by_path($menuSlug, 'OBJECT', 'menu');
        
        $resultArray[] = [            
          'name'          =>  $existingMenu->name,
          'image'         =>  $existingMenu->image,
          'description'   =>  $existingMenu->description,
          'price'         =>  $existingMenu->price,
          'category'      =>  $existingMenu->category,            
        ];

      endwhile;
      wp_reset_postdata();
    endif;

    echo utf8_encode(json_encode($resultArray));

    wp_die();
}
