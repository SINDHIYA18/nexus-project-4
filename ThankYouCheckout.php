<?php
include("includes/db.php");
$delete_cart = "delete from cart";
$run_delete = mysqli_query($con, $delete_cart);
?>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        
        <title>Travel Bird | Order Confirmed</title>


        <!-- BOOTSTRAP CORE CSS -->

        <link href="checkout/bootstrap.min.css" rel="stylesheet">

        <!-- CSS -->
        <link href="checkout/form-validation.css" rel="stylesheet">

        <!-- ANIMATE.CSS  -->
        <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

      

    </head>


    <body >

        <!-- TITLE -->
        <div class="py-5 text-center">
            <h1 class="business-name">Travel Bird</h1>
            
            <img class="thankYouImageHead my-5" src="images/circleHead.png" />
            <img class="thankYouImage  my-5 rotate" src="images/sun.png" />
        
            <h1 style="font-size:3vw;">Your Booking is Confirmed. Thank You for making trip with us &#128519;</h1>
            <a href="index.php" class=" btn btn-primary btn-lg button" style="font-size:1.5vw;">Home</a>
        </div>
      
    </body>
</html>
