<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="author" content="Peter Manoukain">
<meta name="csrf-token" content="{{ csrf_token() }}">

<?php 


header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods: *');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');


header('Access-Control-Allow-Origin: http://localhost:8000/api');
header('Access-Control-Allow-Origin: http://127.0.0.1:8000/api/');
header("Access-Control-Allow-Origin: http://127.0.0.1"); 
header("Access-Control-Allow-Origin: http://127.0.0.1:8000"); 
header("Access-Control-Allow-Origin: https://opentdb.com"); 
header("Access-Control-Allow-Origin: https://opentdb.com/api.php"); 
header("Access-Control-Allow-Origin: *");
?>


<title>Project Cyprus   </title>

<link href="{{ asset('css/app.css') }}" rel="stylesheet">

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
 


   <link href="{{ asset('css/css.css') }}" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="nofollow" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>
<body  class="bg-shape">

 

<div id="app2">
 <main-Home />
</div>
<script src="{{ asset('js/app2.js') }}"></script>






</body>
</html>