<?php include('connection.php');   
   session_start();
   $hrm  =  hrm();

   if(isset($_POST['submit'])){
      $email=$_POST['email'];
      $password=$_POST['password'];

      if (empty($email)) {
        $msg .= "<center><font  size='4px' face='Verdana' size='1' color='red'>Please Enter Your Email. </font></center>";
      }
      if (empty($password)) {
        $msg .= "<center><font  size='4px' face='Verdana' size='1' color='red'>Please Enter Your password.";
      }
   
      $sql="select * from admin where email='$email' AND password='$password' ";
      $result=mysqli_query($hrm,$sql);
      $rowcount=mysqli_num_rows($result);

      if($rowcount) {
         $allAdmin=mysqli_fetch_assoc($result);
         $adminName=  $allAdmin['full_name'];
         $_SESSION['adminName']=$adminName;
         $_SESSION['adminLogin']=true;   
         header("Location: adminHome.php");
      }else{

         $sql2="select * from employee where email='$email' AND password='$password' ";
         $result2=mysqli_query($hrm,$sql2);
         $rowcount2=mysqli_num_rows($result2);

         if($rowcount2) {
            $allEmployee=mysqli_fetch_assoc($result2);

            $employee_id = $allEmployee['employee_id'];
            $_SESSION['employee_id']=$employee_id;     

            $employeeName = $allEmployee['full_name'];
            $_SESSION['employeeName']=$employeeName;    
                    
            $_SESSION['employeeLogin']=true;   
            header("Location: employeeHome.php");
         }else{
             $_SESSION['id_pass_fail']=true;
         }
      }
   }
?>
     
<script language="javascript">
<!--
function memloginvalidate()
{
   if(document.form1.txtusername.value == "")
     {
        alert("Please enter admin UserName.");
        document.form1.txtusername.focus();
        return false;
     }
   if(document.form1.txtpassword.value == "")
     {
        alert("Please enter admin Password.");
        document.form1.txtpassword.focus();
        return false;
     }
   }

//-->
</script>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
   <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" type="text/css" href="assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
   <link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
   <link rel="stylesheet" type="text/css" href="assets/css/util.css">
   <link rel="stylesheet" type="text/css" href="assets/css/main.css">
   
</head>
<body>

   <?php if(isset($_SESSION['id_pass_fail'])) { ?>
      <?php 
         echo '<script type="text/javascript">
                  alert("Wrong ID or Password !\nPlease try again.");
               </script>';
      ?> 
   <?php } ?> 

   <?php unset($_SESSION['id_pass_fail']); ?>


	<div class="limiter">
		<div class="container-login100" style="background-image: url('assets/profilePicture/index.jpeg');">
			<div class="wrap-login100">
				<span class="login100-form-title p-b-41">
					[Admin / User] Login
				</span>
				<form method="post" class="login100-form validate-form p-t-5">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="email" name="email" placeholder="Email">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>              

					<div class="container-login100-form-btn m-t-32">
						<button name="submit" type="submit" class="login100-form-btn">
							Login
						</button>
					</div>

               <div class="container-login100-form-btn m-t-15 m-r-5 m-l-5">
                  <table class="table table-bordered">
                     <thead>
                        <tr class="info text-center">
                           <th>User Type</th>
                           <th>Email</th>
                           <th>Password</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr class="success">
                           <td>Admin</td>
                           <?php                   
                              $sql  ="select * from admin LIMIT 1";
                              $result  =  mysqli_query($hrm,$sql);
                              while($row = mysqli_fetch_assoc($result)) { ?>
                                 <td><?= $row['email'] ?></td>
                                 <td><?= $row['password'] ?></td>
                           <?php } ?>
                        </tr>
                        <tr class="danger">
                           <td>User</td>
                           <?php                   
                              $sql  ="select * from employee LIMIT 1";
                              $result  =  mysqli_query($hrm,$sql);
                              while($row = mysqli_fetch_assoc($result)) { ?>
                                 <td><?= $row['email'] ?></td>
                                 <td><?= $row['password'] ?></td>
                           <?php } ?>
                        </tr>
                     </tbody>
                  </table>                  
               </div>
               
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
   <script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="assets/vendor/animsition/js/animsition.min.js"></script>
   <script src="assets/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/vendor/select2/select2.min.js"></script>
   <script src="assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="assets/vendor/countdowntime/countdowntime.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>