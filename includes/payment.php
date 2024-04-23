<?php 

    //SESSION START
    include "./AdditionalPHP/startSession.php";

    $validated = false;

    // define variables and set to empty values
    $fname = $lname = $email = $address = $country = $city = $zip = $paymentMethod = $ccname = $ccnum = $ccexp_m =$ccexp_y = $cccvv = "";
    $fnameErr = $lnameErr = $emailErr = $addressErr = $countryErr = $cityErr = $zipErr = $paymentMethodErr = $ccnameErr = $ccnumErr = $ccexpErr = $cccvvErr = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        //FIRST NAME VALIDATION
      /*  $fname = test_input($_POST["fname"]);
        // check if name only contains letters and whitespace
        if (!preg_match("/^[a-zA-Z-' ]*$/",$fname)) {
          $fnameErr = "Only letters and white space allowed";
        }

        //LAST NAME VALIDATION
        $lname = test_input($_POST["lname"]);
        // check if name only contains letters and whitespace
        if (!preg_match("/^[a-zA-Z-' ]*$/",$lname)) {
          $lnameErr = "Only letters and white space allowed";
        }
      
        //EMAIL VALIDATION
        $email = test_input($_POST["email"]);
        // check if e-mail address is well-formed
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
          $emailErr = "Invalid email format";
        }
        
        //ADDRESS VALIDATION
        $address = test_input($_POST["address_checkout"]);
        // check if email contains numbers at the start, followed by letters, contains space, hyphen and comma
        if (!preg_match("/^[0-9a-zA-Z\s,-]+$/",$address)) {
          $addressErr = "Invalid address";
        }

        //COUNTRY VALIDATION
        // $country = test_input($_POST["country"]);
        // check if country == india
        // if ($country != "India" || $country != "india" ) {
        //   $addressErr = "Sorry, we currently deliver in India only.";
        // }

        //CITY VALIDATION
        $city = test_input($_POST["city"]);
        // check if city == options
        if ($city == "Chennai" || $city == "Kanchipuram" || $city == "Coimbatore" || $city == "Tiruchirapalli" || $city == "Salem" || $city == "Madurai" || $city == "Bangalore") {
          //valid
        }
        else{
          $cityErr = "Invalid city";
        }

        //ZIP VALIDATION
        $zip = test_input($_POST["zip"]);
        // check if zip contains exactly 6 numbers
        if (!preg_match("/^[0-9]{6}/",$zip)) {
          $zipErr = "Invalid zip code";
        }
     */ 

        //REGEX BY CARD TYPE
        $cardtype = array(
          "visa"       => "/^4[0-9]{15}$/",
          // "mastercard" => "/^5[1-5][0-9]{14}$/"
         
        );


        //CC NAME VALIDATION
        $ccname = test_input($_POST["ccname"]);
        // check if ccname only contains letters and whitespace
        if (!preg_match("/^[a-zA-Z-' ]*$/",$ccname)) {
          $ccnameErr = "Only letters and white space allowed";
        }

        //CC NUM VALIDATION
        $ccnum = test_input($_POST["ccnum"]);
        // check if ccnum matches regex by supported card types
        if (!preg_match($cardtype['visa'],$ccnum)) {
          $ccnumErr = "Invalid card number
          <br>
          We are sorry! Our system currently supports VISA cards only.";
        }


        //CC EXPIRATION DATE VALIDATION
        if (empty($_POST["ccexp_m"]) || empty($_POST["ccexp_y"])) {
          $ccexpErr = "Please enter the expiration date";
        } 
        else {
            $ccexp_m = test_input($_POST["ccexp_m"]);
            $ccexp_y = test_input($_POST["ccexp_y"]);

            //VALIDATES MONTH
            if((int)$ccexp_m > 0 && (int)$ccexp_m < 13){
              //VALIDATES YEAR
              if((int)$ccexp_y > 1900 && (int)$ccexp_y < 4000){
                $expired_check = \DateTime::createFromFormat('my', $ccexp_m.$ccexp_y);
                $month_now = date('m');
                $year_now = date('y');
                $now = new \DateTime();
                //CHECK IF EXPIRED

                if($year_now < (int)$ccexp_y){
                  //valid year
                  
                }
                else if($year_now == (int)$ccexp_y){
                  if($month_now < (int)$ccexp_m){
                    //valid exp num
                  }
                  //exp
                  else{
                    $ccexpErr = "Your credit card has expired.";
                  }
                }
                //exp
                else {
                  $ccexpErr = "Your credit card has expired..";
                }




                // if ($expired_check > $now) {
                //   $ccexpErr = "Your credit card has expired";
                // }
              }
              else {
                $ccexpErr = "Invalid year";
              }
            }
            else {
              $ccexpErr = "Invalid expiration date";
            }
         }


          //CC CVV VALIDATION
          $cccvv = test_input($_POST["cccvv"]);
          // check if CVV contains has 3 or 4 digits and is
          //between 0-9 and does not have any alphabets and special characters.
          if (preg_match("/^[0-9]{3,4}$/",$cccvv)) {
            //valid
          }
          else{
            $cccvvErr = "Invalid CVV";
          }

          if($fnameErr == "" && $lnameErr == "" && $emailErr == "" && $addressErr == "" && $countryErr == "" && $cityErr == "" && $zipErr == "" && $paymentMethodErr == "" && $ccnameErr == "" && $ccnumErr == "" && $ccexpErr == "" && $cccvvErr == ""){
            $validated = true;
          }
  
      
    }
    
    function test_input($data) {
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      return $data;
    }
      

    
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Travel Bird | Checkout</title>

    

    <!-- BOOTSTRAP CORE CSS -->

    <link href="checkout/bootstrap.min.css" rel="stylesheet">

    <!-- CSS -->
    <link href="checkout/form-validation.css" rel="stylesheet">

  </head>


<body>
      
  <div class="container">
    
    <main>
       
        <form action=
            "
            <?php
              if($validated){
                echo 'ThankYouCheckout.php';
                $validated = false;
              }
              else {
                echo htmlspecialchars($_SERVER["PHP_SELF"]);
              }
            
            ?>"
          class="needs-validation" method="POST">
          <div class="row g-3">

            <!-- PAYMENT METHOD -->
            <h4 class="mb-3">Payment Method</h4>

            

            <!-- CREDIT CARD DETAILS  -->
            <div class="row gy-3">

              <!-- NAME ON CARD  -->
              <div class="col-md-6">
                <label for="cc-name" class="form-label">Name on card</label>
                <input type="text" class="form-control" name="ccname" id="cc-name" placeholder="" value="<?php echo $ccname; ?>" required>
                <small class="text-muted">Full name as displayed on card</small>
                <div class="invalid-feedback">
                  Name on card is required
                </div>
                <span class="error"><?php echo $ccnameErr;?></span>
              </div>


              <!-- CREDIT CARD NUMBER  -->
              <div class="col-md-6">
                <label for="cc-number" class="form-label">Credit card number</label>
                <input type="text" class="form-control" name="ccnum" id="cc-number" placeholder="" value="<?php echo $ccnum; ?>" required>
                <div class="invalid-feedback">
                  Credit card number is required
                </div>
                <span class="error"><?php echo $ccnumErr;?></span>
              </div>


              <!-- EXPIRATION  -->
              <div class="col-md-6">
                <label for="cc-expiration" class="form-label">Expiration</label>
                <div class="" style="display: flex;">
                  <input type="text" class="form-control" name="ccexp_m" id="cc-expiration-mm" placeholder="mm" value="<?php echo $ccexp_m; ?>" required>
                  <input type="text" class="form-control" style="margin-left: 1rem;" name="ccexp_y" id="cc-expiration-yy" placeholder="yyyy" value="<?php echo $ccexp_y; ?>" required>
                </div>
                <div class="invalid-feedback">
                  Expiration date required
                </div>
                <span class="error"><?php echo $ccexpErr;?></span>
              </div>


              <!-- CVV SECURITY CODE  -->
              <div class="col-md-3">
                <label for="cc-cvv" class="form-label">CVV</label>
                <input type="text" class="form-control" name="cccvv"id="cc-cvv" placeholder="" value="<?php echo $cccvv; ?>" required>
                <div class="invalid-feedback">
                  Security code required
                </div>
                <span class="error"><?php echo $cccvvErr;?></span>
              </div>
            </div>


            <!-- COTINUE TO CHECKOUT BUTTON  -->
            <hr class="my-4 pinkLine" >
            
            <button class="w-100 btn btn-primary btn-lg button" type="submit">Confirm Order</button>
            
            <a href="index.php" class="w-30 btn btn-primary btn-lg button mt-3 cancel">Cancel</a>

            <!-- <button class="w-30 btn btn-primary btn-lg button mt-3 cancel">Cancel</button> -->
          </form>
        </div>
      </div>
    </main>


  </div>


      <script src="checkout/bootstrap.bundle.min.js"></script>
      <script src="checkout/form-validation.js"></script>
  </body>
  
  
</html>