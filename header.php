<!DOCTYPE html>
<html lang="en">
<head>
   <style>
      /* Paste this css to your style sheet file or under head tag */
      if it's not present, don't show loader 
      .no-js #loader { display: none;  }
      .js #loader { display: block; position: absolute; left: 100px; top: 0; }
      .se-pre-con {
         position: fixed;
         left: 0px;
         top: 0px;
         width: 100%;
         height: 100%;
         z-index: 9999;
         background: url(images/loader-64x/Preloader_2.gif) center no-repeat #fff;
      }

      #my_button
      {
         display: inline-block;
          width:  150px;
          height: 50px;
          margin: 2px;
      }

      .error {
        font-family: sans-serif;
        font-style: italic;
        color: red;
      }

      .accepted {
        font-family: sans-serif;
        font-style: italic;
        color: green;
      }
   </style>

   <!-- <script src="assets/js/jquery.min.js"></script> -->
   <!-- <script src="assets/js/modernizr.js"></script> -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

   <meta charset="utf-8"/>
   <!-- <meta http-equiv="refresh" content="5"/> -->
   <link rel="icon" type="image/png" href="assets/img/favicon.ico">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

   <title>HRM</title>

   <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
   <meta name="viewport" content="width=device-width"/>

   <!-- Bootstrap core CSS     -->

   <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
   <link href="../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
   <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

   <link href="assets/css/animate.min.css" rel="stylesheet"/>
   <link href="assets/css/demo.css" rel="stylesheet" />

   <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
   <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
   <link href="assets/css/font-awesome.min.css" rel="stylesheet"/>
   <link href="assets/css/fonts_googleapis.css" rel="stylesheet"/> 
   <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet"/>
   <link href="css/style.css" rel="stylesheet"/>
</head>
<body>