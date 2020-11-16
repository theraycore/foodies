  # Foodies - Test

  [![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

  Repositorio para la prueba de desarrollo **Front-End** utilizando **Wordpress**.

  ### Tecnologías Utilizadas

  El proyecto se desarrollo haciendo uso de las siguientes herramientas:

  * [Wordpress]()
  * [Mysql]()
  * [Sass]()
  * [Vue.js]()
  * [Local by Flywheel]()
  * [Laravel Mix]()


  ### Instalación

  - **Instalación Manual**

  1. Para poder instalar la aplicación web será necesario mover todo el contenido de la carpeta:
  ```sh
  /app/public/
  ```
  &ensp;&ensp;&ensp;&ensp;&ensp;a nuestro directio **public_html** de nuestro servidor Apache o NGINX.

  2. Importar la base de datos que se encuentra en el archivo:
  ```sh
  /app/sql/local.sql
  ```
  &ensp;&ensp;&ensp;&ensp;&ensp;en nuestro servidor Mysql y considerar los siguientes detalles de la base:
  - &ensp;&ensp;&ensp;&ensp;&ensp;Nombre de base: local
  - &ensp;&ensp;&ensp;&ensp;&ensp;Nombre de usuario MySql: root
  - &ensp;&ensp;&ensp;&ensp;&ensp;Contraseña usuario MySql: root

  &ensp;&ensp;&ensp;&ensp;&ensp;estos datos se pueden modificar en el archivo **wp-config.php**
  3. Se deben instalar las dependencias **NPM** y compilar scripts del proyecto, para ello se debe ir al directorio:
  ```sh
  /app/public/wp-content/themes/foodies-landing-theme/
  ```
  &ensp;&ensp;&ensp;&ensp;&ensp;y ejecutar los siguientes comandos:
  ```sh
  $ npm install
  $ npm run dev
  ```
  &nbsp;
  - **Instalacioón via Local by Flywheel**

  1. Para poder instalar todo el proyecto de forma sencilla y rápida será necesario instalar el programa **Local by Flywheel** el cual se puede descargar desde esta dirección:

  - URL: [https://localwp.com](https://localwp.com)

  2. Luego solo se debe arrastrar este repositorio comprimido en un archivo **.ZIP** a la ventana del programa y este proyecto se importara y estará listo para poder ejecutarse en nuestro entorno local.
  3. Se deben instalar las dependencias **NPM** y compilar scripts del proyecto, para ello se debe ir al directorio en que Local by Flywheel guardo el proyecto:
  ```sh
  /app/public/wp-content/themes/foodies-landing-theme/
  ```
  &ensp;&ensp;&ensp;&ensp;&ensp;y ejecutar los siguientes comandos:
  ```sh
  $ npm install
  $ npm run dev
  ```

  &nbsp;
  ### Vista Previa Online

  Para poder ver el proyecto corriendo en linea se puede acceder a él por medio de esta dirección:
  - URL: [http://foodies-test.flywheelsites.com/](http://foodies-test.flywheelsites.com/)

  Al entrar en la dirección se nos pedirán unas credenciales:
  - **Usuario:** flywheel
  - **Contraseña:** somber-stream

  &nbsp;

  ## Credenciales Wordpress
  Para poder acceder al área de administración se debera utilizar el siguiente usuario

  | Usuario | Contraseña |
  | ------ | ------ |
  | daniel_raymundo | 123456 |
  ## URL API Scrapping
  Para poder obtener los datos de la API y guardarlos en la base de Wordpress se deberan acceder a las siguientes URL del **admin-ajax.php** de Wordpress

  | Post Type | URL |
  | ------ | ------ |
  | location | <Site-Domain>/wp-admin/admin-ajax.php?action=get_locations_from_api |
  | categorie | <Site-Domain>/wp-admin/admin-ajax.php?action=get_categories_from_api |
  | menu | <Site-Domain>/wp-admin/admin-ajax.php?action=get_menus_from_api |

  &nbsp;

  License
  ----

  MIT
