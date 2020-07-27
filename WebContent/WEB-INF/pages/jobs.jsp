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
<body style="background-color:#ebf0fa;">
  <div class="cont col-12">
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
        <a class="top-but  active" href="#">Job</a>
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
      <div class="d-none d-sm-block col-sm-1 d-inline">
      </div>
    </div>
    <div class="box4">
      <h2>Register Here For The Job</h2>
      <h4>Two Simple and Easy Ways:</h4>
      <div class="steps row">
        <div class="col-12 col-sm-3 text-jobsec">
          <a href="#"><button class="reg-but">Register</button></a>
        </div>
        <div class="col-12 col-sm-4 text-jobsec"></div>
        <div class="col-12 col-sm-4 text-jobsec">
          <h2>Call : +91 8005845441</h2>
        </div>
      </div>
    </div>
    <div class="form-area">
      <h2 style="color: #142952;text-shadow: 1px 1px #85a3e0; margin-top:10px;text-decoration: underline;">Registration Form</h2>
      <form action="adduser" method="POST" class="register-form" id="register-form">
        <div class="form-row col-12">
          <div class="form-group col-12 col-sm-6">
            <div class="form-input">
              <label for="first_name" class="required">First name</label>
              <input type="text" class="text-input" name="first_name" id="first_name" />
            </div>
            <div class="form-input">
              <label for="phone" class="required">Phone number</label>
              <input type="text" class="text-input" name="phone" id="phone" />
            </div>
            <div class="form-input">
              <label for="experience" class="required">Experience</label>
              <select id="experience" class="dropdown1" name="experience">
                <option value="0">0 Years</option>
                <option value="0-1">0-1 Years</option>
                <option value="1-5">1-5 Years</option>
                <option value="5+">5+ Years</option>
              </select>
            </div>
            <div class="form-input">
              <label for="dateOfBirth" class="required">Date Of Birth</label>
              <input type="text" class="text-input" name="dateOfBirth" placeholder="DD/MM/YY" id="dateOfBirth" />
            </div>
            <div class="form-input">
              <label for="tempAddress">Temporary Address</label>
              <input type="text" class="text-input" name="tempAddress" id="tempAddress" />
            </div>
            <div class="form-input">
              <label for="gender" class="required">Gender</label>
              <select id="gender" class="dropdown1" name="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
              </select>
            </div>
          </div>
          <div class="form-group col-12 col-sm-6">
            <div class="form-input">
              <label for="last_name" class="required">Last name</label>
              <input type="text" class="text-input" name="last_name" id="last_name" />
            </div>
            <div class="form-input">
              <label for="alt_phone" class="required">Alternate Phone number</label>
              <input type="text" class="text-input" name="alt_phone" id="alt_phone" />
            </div>
            <div class="form-input">
              <label for="education" class="required">Education</label>
              <select id="education" class="dropdown1" name="education">
                <option value="no education">No Education</option>
                <option value="10th/secondary">10th/Secondary</option>
                <option value="12th/sr.secondary">10th/Sr.Secondary</option>
                <option value="12th+">12th+</option>
              </select>
            </div>
            <div class="form-input">
              <label for="placeOfBirth" class="required">Place Of Birth</label>
              <input type="text" class="text-input" name="placeOfBirth" id="placeOfBirth" />
            </div>
            <div class="form-input">
              <label for="permAddress">Permanent Address</label>
              <input type="text" class="text-input" name="permAddress" id="permAddress" />
            </div>
            <div class="form-input">
              <label for="expSalary">Expected Salary</label>
              <input type="text" class="text-input" name="expSalary" id="expSalary" />
            </div>
          </div>
        </div>
        <div class="form-row col-12">
          <div class="label-flex"><label for="services">Services</label></div>
          <div class="checkbox-group">
            <div class="checkbox-item">
              <label for="dusting"><input type="checkbox" name="dusting" id="dusting" value="1"> Dusting</label>
            </div>
            <div class="checkbox-item">
              <label for="cooking"><input type="checkbox" name="cooking" id="cooking" value="1"> Cooking</label>
            </div>
            <div class="checkbox-item">
              <label for="bathroom_cleaning"><input type="checkbox" name="bathroom_cleaning" id="bathroom_cleaning" value="1"> Bathroom Cleaning</label>
            </div>
            <div class="checkbox-item">
              <label for="toilet_cleaning"><input type="checkbox" name="toilet_cleaning" id="toilet_cleaning" value="1"> Toilet Cleaning</label>
            </div>
            <div class="checkbox-item">
              <label for="kitchen_cleaning"><input type="checkbox" name="kitchen_cleaning" id="kitchen_cleaning" value="1"> Kitchen Cleaning</label>
            </div>
            <div class="checkbox-item">
              <label for="utensils_cleaning"><input type="checkbox" name="utensils_cleaning" id="utensils_cleaning" value="1"> Utensils Cleaning</label>
            </div>
            <div class="checkbox-item">
              <label for="clothes_washing"><input type="checkbox" name="clothes_washing" id="clothes_washing" value="1"> Clothes Washing</label>
            </div>
            <div class="checkbox-item">
              <label for="clothes_ironing"><input type="checkbox" name="clothes_ironing" id="clothes_ironing" value="1"> Clothes Ironing</label>
            </div>
          </div>
        </div>
        <div class="form-submit">
          <input type="submit" value="Submit" class="submit" id="submit" name="submit" />
        </div>
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
  <div>
  </div>
  <div>
  </div>
</body>
</html>
