<?php
include("functions/functions.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Travel Bird : All Packages</title>
    <link rel="stylesheet" href="styles/style.css" media="all">
</head>
<body>
    <!--Main container starts here-->
    <div class="main_wrapper">
        <!--Header starts here-->
        <?php include 'includes/header.php'; ?>
        <!--Header ends here-->
        <!--Navbar starts here-->
        <?php include 'includes/navbar.php'; ?>
        <!--Navbar ends here-->
        <!--Content starts here-->
        <div class="content_wrapper">
            <!--left-sidebar starts-->
            <?php include "includes/left-sidebar.php"; ?>
            <!--left-sidebar ends-->
            <div id="content_area">
                <div id="shopping_cart">
                    <?php cart(); ?>
                <div id="shopping_cart">
                    <span style="float: right;font-size: 18px;padding: 5px;line-height: 40px;">
                        <?php
                        if (isset($_SESSION['customer_email'])) {
                            echo "<b>Welcome: </b>" . $_SESSION['customer_email'] . "<b style='color: yellow;'> Your</b>";
                        } else {
                            echo "<b>Welcome Guest:</b>";
                        }
                        ?>
                        <b style="color: yellow;">Shopping Cart-</b> Total Items: <?php total_items(); ?>
                        Total Price: <?php total_price(); ?> <a href="cart.php" style="color: yellow;">Go to Cart</a>
                </div>
                <div id="packages_box">
                    <?php
                    $get_pack = "SELECT * FROM packages";

                    $run_pack = mysqli_query($con, $get_pack);

                    while ($row_pack = mysqli_fetch_array($run_pack)) {
                        $pack_id = $row_pack['package_id'];
                        $pack_cat = $row_pack['package_cat'];
                        $pack_type = $row_pack['package_type'];
                        $pack_title = $row_pack['package_title'];
                        $pack_price = $row_pack['package_price'];
                        $pack_image = $row_pack['package_image'];

                        echo "
                        <div id='single_package'>
                        <h3 style='font-family: Cambria; margin-bottom: 2px; color:black; font-weight:bold;'>$pack_title</h3>
                        <img src='admin_area/package_images/$pack_image' width='180' height='180'>
                        <p><b style = 'color:black;'> Cost &#8377; $pack_price</b></p>
                        <a href='details.php?pack_id=$pack_id' style='float: left; font-size:18px;text-decoration: none; font-weight:bold;'>Details</a>
                        <a href='cart.php?add_cart=$pack_id'><button style='float: right; font-size:14px; cursor: pointer; padding: 2px 4px; font-weight:bold;'>Book</button></a>
                        </div>
                        ";
                    }
                    ?>
                </div>
            </div>
        </div>
        <!--Content ends here-->
        <!--footer starts-->
        <?php include "includes/footer.php";?>
        <!--footer ends-->
    </div>
    <!--Main container ends here-->
</body>
</html>