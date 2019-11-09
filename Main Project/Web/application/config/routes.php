<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['default_controller'] = 'news';

$route['login'] = 'auth';

$route['logout'] = 'auth/logout';

$route['news'] = 'news';

$route['news/article/(:any)'] = 'news/article/$1';