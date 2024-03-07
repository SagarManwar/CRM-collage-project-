
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>CRM | Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
</script>

</head>
<body class="error-body no-top">
<div class="container">
<div class="login-container">  
<div class="col-md-5">
  <h2 class="text-center text-white"><strong>Enter Email Adress</strong></h2>
  <hr style="border-color:#ebe7e7">
      <p class="text-center"><a href="login.php">Login Here!</a> if you already have an account</p>
</div>
<div class="col-md-5 "> <br>
          <form action="sendemail.php" method="post">
            <div class="form-group">
            <label for="email" class="control-label">Email</label>
              <input type="email" class="form-control rounded-0" id="email" name="email" required="required">
            </div>
            <div class="form-group text-center">
              <button class="btn btn-primary rounded-pill">Send email</button>
            </div>
            </form>
        </div>
     
    
  </div>
</div>
<script src="assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="assets/js/login.js" type="text/javascript"></script>
</body>
</html>