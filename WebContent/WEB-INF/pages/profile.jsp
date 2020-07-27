<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Bootstrap CSS -->
    <!-- build:css css/main.css -->
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="node_modules/bootstrap-social/bootstrap-social.css">
    <link href="css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- endbuild -->

    <title>MaidInIndia Jobs</title>
</head>
<body onload="myFunction()" style="background-color:#ebf0fa;">
  <div class="cont2 col-12">
    <div class="row row-header top-bar">
      <div class="col-2 col-sm-1 d-inline">
        <img src="images/logo2.png" class="img-logo" width=52 height=52>
      </div>
      <div class="col-10 col-sm-2 d-inline">
        <h1 style="color:#142952;text-shadow: 1px 1px #85a3e0;">MaidInIndia</h1>
      </div>
      <div class="d-none d-sm-block col-sm-2 d-inline">
      </div>
      <div class="d-none d-sm-block col-sm-1 d-inline">
        <a class="top-but" href="home">Home</a>
      </div>
      <div class="d-none d-sm-block col-sm-1 d-inline">
        <a class="top-but" href="#">About</a>
      </div>
      <div class="d-none d-sm-block col-sm-1 d-inline">
        <a class="top-but" href="jobs">Job</a>
      </div>
      <div class="d-none d-sm-block col-sm-1 d-inline">
        <div class="dropdown">
          <a class="btn btn-lg dropdown-toggle" type="button" data-toggle="dropdown">Services</a>
            <ul class="dropdown-menu">
              <li><div class="service-item">Dusting</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>500</div></li>
              <li><div class="service-item">Cooking</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>500 per head</div></li>
              <li><div class="service-item">Bathroom Cleaning</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>300</div></li>
              <li><div class="service-item">Toilet Cleaning</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>300</div></li>
              <li><div class="service-item">Kitchen Cleaning</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>300</div></li>
              <li><div class="service-item">Utensils Cleaning</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>300 per head</div></li>
              <li><div class="service-item">Clothes Washing</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>500 per head</div></li>
              <li><div class="service-item">Clothes Ironing</div><div class="service-rate"><i class="fa fa-inr" aria-hidden="true"></i>300 per head</div></li>
            </ul>
          </div>
      </div>
      <div class="d-none d-sm-block col-sm-1 d-inline">
        <div class="dropdown">
          <a class="btn btn-lg dropdown-toggle" type="button" data-toggle="dropdown">Help</a>
            <ul class="dropdown-menu">
              <li><div class="service-item1">Call : </div><div class="service-rate1"><i class="fa fa-phone" aria-hidden="true"></i> +91 8005845441</div></li>
              <li><div class="service-item1">Email : </div><div class="service-rate1"><i class="fa fa-envelope" aria-hidden="true"></i> parveengodara25@gmail.com</div></li>
              <li><p>Please write to us on <a href="parveengodara25@gmail.com">parveengodara25@gmail.com</a> for support or if you have any queries.</p></li>
              <li><p>Or call us on <a href="+91 8005845441">+91 8005845441</a>.</p></li>
            </ul>
          </div>
      </div>
    </div>
    <div class="login-area" id="formSection" style="display:none;">
      <form action="bookRequest" method="POST" class="register-form" id="registerform" name="registerform">
        <div class="login-block">
          <div class="login-item">
            <label for="email" style="font-weight:500;">Email</label>
            <input type="text" class="text-input" name="email" id="email" value="${email}" />
          </div>
        </div>
      </form>
    </div>
    <div class="login-area" id="NoBookingSection">
      <h2 style="color: #142952;text-shadow: 1px 1px #85a3e0; margin-top:10px;text-decoration: underline;">No Booking Profile</h2>
      <h3 style="margin-top:100px;margin-bottom:100px;text-align:center;">You have no active bookings.</h3>
      <button class="submit" type="submit" onclick="book()">Book Now!</button>
    </div>
    <div class="signup-area" id="NoPaymentSection">
      <h2 style="color: #142952;text-shadow: 1px 1px #85a3e0; margin-top:10px;text-decoration: underline;">No Payment Profile</h2>
      <h5 style="float:left;margin-left:100px;">Active Booking : </h5>
      <form action="myServlet"  name="payuform" method=POST >
      <div class="bookingDetail">
          <input type="hidden" name="key"value="${key}" />
          <input type="hidden" name="hash_string" value="" />
          <input type="hidden" name="hash" />
          <input type="hidden" name="txnid"/>
          <input type="hidden" name="surl" value="http://localhost:1000/MaidInIndia/paymentSuccessfull"/>
          <input type="hidden" name="furl" value="http://localhost:1000/MaidInIndia/paymentFailed"/>
          <input type="hidden" name="service_provider" value="payu_paisa" />
          <div class="payup-item">
            <label for="firstname" style="font-weight:500;">Name</label>
            <input type="text" class="text-input" name="firstname" id="firstname" value="${name}"/>
          </div>
          <div class="payup-item">
            <label for="email" style="font-weight:500;">Email</label>
            <input type="text" class="text-input" name="email" id="email" value="${email}"/>
          </div>
          <div class="payup-item">
            <label for="phone" style="font-weight:500;">Phone</label>
            <input type="text" class="text-input" name="phone" id="phone" value="${phone}"/>
          </div>
          <div class="payup-item">
            <label for="amount" style="font-weight:500;">Amount</label>
            <input type="text" class="text-input" name="amount" id="amount" value="${amount}"/>
          </div>
          <div class="payup-item-area">
            <label for="productinfo" style="font-weight:500;">Booking Info:</label>
            <textarea class="textarea-input" name="productinfo" id="productinfo" >Services: ${service1} ${service2} ${service3} ${service4} ${service5} ${service6} ${service7} ${service8}&#13;&#10;Number of People: ${numOfPeople}&#13;&#10; Gender: ${gender}</textarea>
          </div>
      </div>
      <a href="cancelbook"><button class="submit" style="margin-left:30px;" id="cancelbook" disabled>Cancel Booking</button></a>
      <button class="submit" style="margin-left:30px;" id="paynow" disabled>Pay Now!</button>
      <button class="submit" type="submit" onclick="book()" style="margin-left:30px;" id="book" disabled>Change Booking</button>
    </form>
    </div>
    <div class="signup-area" id="CompleteSection">
      <h2 style="color: #142952;text-shadow: 1px 1px #85a3e0; margin-top:10px;text-decoration: underline;">Complete Profile</h2>
      <h5 style="float:left;margin-left:100px;">Active Booking : </h5>
      <form action="myServlet"  name="payuform" method=POST >
      <div class="bookingDetail">
          <input type="hidden" name="key" value="BZVTjj6z" />
          <input type="hidden" name="hash_string" value="" />
          <input type="hidden" name="hash" />
          <input type="hidden" name="txnid"/>
          <input type="hidden" name="surl" />
          <input type="hidden" name="furl"/>
          <input type="hidden" name="service_provider" value="payu_paisa" />
          <div class="payup-item">
            <label for="firstname" style="font-weight:500;">Name</label>
            <input type="text" class="text-input" name="firstname" id="firstname" />
          </div>
          <div class="payup-item">
            <label for="email" style="font-weight:500;">Email</label>
            <input type="text" class="text-input" name="email" id="email" />
          </div>
          <div class="payup-item">
            <label for="phone" style="font-weight:500;">Phone</label>
            <input type="text" class="text-input" name="phone" id="phone" />
          </div>
          <div class="payup-item">
            <label for="amount" style="font-weight:500;">Amount</label>
            <input type="text" class="text-input" name="amount" id="amount" />
          </div>
          <div class="payup-item-area">
            <label for="productinfo" style="font-weight:500;">Booking Info:</label>
            <textarea class="textarea-input" name="productinfo" id="productinfo" >Services: ${service1} ${service2} ${service3} ${service4} ${service5} ${service6} ${service7} ${service8}&#13;&#10;Number of People: ${numOfPeople}&#13;&#10; Gender: ${gender}</textarea>
          </div>
      </div>
      <a href="cancelbook"><button class="submit" style="margin-left:30px;" id="cancelbook">Cancel Booking</button></a>
      <button class="submit" type="submit" style="margin-left:30px;" id="paynow" disabled>Pay Now!</button>
      <button class="submit" type="submit" onclick="book()" style="margin-left:30px;" id="book">Change Booking</button>
    </form>
    </div>
  </div>
  <div class="footer row">
    <div class="col-12 col-sm-4 footCol">
      <h3>MaidInIndia</h3>
      <p>MaidInIndia app provides the easiest way to find Maid in your city . We help our customers to find trusted and reliable professional workers . The workers are professionaly trained and reliable . </p>
    </div>
    <div class="col-12 col-sm-3 footCol">
      <div class="text-social">
          <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
          <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
          <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
          <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
          <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-square" style="color:#e6e6e6;font-size:36px;"></i></a>
      </div>
      <div class="text-center">
        <a href="#">Terms and Conditions</a><br>
        <a href="#">Privacy Policy</a>
      </div>
    </div>
    <div class="col-12 col-sm-5 footCol">
      <h6>Reach us at</h6><h5>MaidInIndia</h5><p>JECRC Foundation, Tonk Road, Jaipur(302022), Rajasthan, India</p>
      <p>Mobile: +91 8005845441</p><p>Email: parveengodara25@gmail.com</p>
    </div>
  </div>
  <script>
  function myFunction() {
	  var x = document.getElementById("NoBookingSection");
	  var y = document.getElementById("NoPaymentSection");
	  var z = document.getElementById("CompleteSection");
	  var a = document.getElementById("cancelbook");
	  var b = document.getElementById("paynow");
	  var c = document.getElementById("book");
	  if ('${section}' === "NoBookingSection") {
	    x.style.display = "block";
	    y.style.display = "none";
	    z.style.display = "none";
	  } else if('${section}' === "NoPaymentSection"){
	    x.style.display = "none";
	    y.style.display = "block";
	    z.style.display = "none";
	    if('${daysOfBooking}'>2){
			a.disabled=true;
			b.disabled=false;
			c.disabled=true;
		}else{
			a.disabled=false;
			b.disabled=false;
			c.disabled=false;
		}
	  }else{
		x.style.display = "none";
		y.style.display = "none";
		z.style.display = "block";
		b.disabled=true;
	  }
	}
  function book(){
	  document.registerform.submit();
  }
  </script>
</body>
</html>
