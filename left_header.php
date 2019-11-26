<div class="sidebar" data-color="green" data-image="assets/img/sidebar-5.jpg">
   <div class="sidebar-wrapper">
      <div class="logo">
          <a href="#" class="simple-text">
             Employee Management
          </a>
      </div>
      <?php if(isset($_SESSION['adminLogin'])) { ?>      
         <ul class="nav">
            <li class="">
               <a href="Employee_Information.php">
                  <i class="pe-7s-graph"></i>
                  <p>Employee Information</p>
               </a>
            </li>

            <li>
               <a href="Daily_Attendance.php">
                  <i class="pe-7s-plus"></i>
                  <p>Daily Attendance</p>
               </a>
            </li>

            <li>
               <a href="Monthly_Attendance.php">
                  <i class="pe-7s-plus"></i>
                  <p>Monthly Attendance</p>
               </a>
            </li>
            <li>
               <a href="Attendance_Details.php">
                  <i class="pe-7s-plus"></i>
                  <p>Attendance details</p>
               </a>
            </li>
         </ul>
      <?php } ?>
      <?php if(isset($_SESSION['employeeLogin'])) { ?>
         <ul class="nav">
            <li class="">
               <a href="employeeHome.php">
                  <i class="pe-7s-graph"></i>
                  <p>Employee Information</p>
               </a>
            </li>

            <li>
               <a href="Daily_Attendance.php">
                  <i class="pe-7s-plus"></i>
                  <p>Daily Attendance</p>
               </a>
            </li>

            <li>
               <a href="Monthly_Attendance.php">
                  <i class="pe-7s-plus"></i>
                  <p>Monthly Attendance</p>
               </a>
            </li>
            <li>
               <a href="Attendance_Details.php">
                  <i class="pe-7s-plus"></i>
                  <p>Attendance details</p>
               </a>
            </li>
         </ul>
      <?php } ?>
   <hr>

      <div class="logo">
          <a href="#" class="simple-text">
             Payroll System
          </a>
      </div>
      <?php if(isset($_SESSION['adminLogin'])) { ?>
         <ul class="nav">
            <li class="">
               <a href="Salary_Bonus.php">
                  <i class="pe-7s-graph"></i>
                  <p>Salary & Bonus</p>
               </a>
            </li>
            
            <li>
               <a href="Salary_Bonus_Info.php">
                  <i class="pe-7s-plus"></i>
                  <p>Final Information</p>
               </a>
            </li>
         </ul>
      <?php } ?>
      <?php if(isset($_SESSION['employeeLogin'])) { ?>
         <ul class="nav">
            <li class="">
               <a href="My_Salary_Bonus.php">
                  <i class="pe-7s-graph"></i>
                  <p>My Salary & Bonus</p>
               </a>
            </li>  
         </ul>
      <?php } ?>

   <hr>
      <div class="logo">
         <a href="#" class="simple-text">
            Leave Management System
         </a>
      </div>
      <?php if(isset($_SESSION['adminLogin'])) { ?>
         <ul class="nav">
            <li class="">
               <a href="leaveApplicationConfirm.php">
                  <i class="pe-7s-graph"></i>
                  <p>Leave Application</p>
               </a>
            </li>

            <li>
               <a href="#">
                  <i class="pe-7s-plus"></i>
                  <p>Movement Application</p>
               </a>
            </li>

           <!--  <li>
               <a href="#">
                  <i class="pe-7s-plus"></i>
                  <p>Application Approval</p>
               </a>
            </li> -->
            <li>
               <a href="holidays.php">
                  <i class="pe-7s-plus"></i>
                  <p>Holiday Management</p>
               </a>
            </li>
         </ul> 
      <?php } ?>
      <?php if(isset($_SESSION['employeeLogin'])) { ?>
         <ul class="nav">
            <li class="">
               <a href="leaveApplication.php">
                  <i class="pe-7s-graph"></i>
                  <p>Leave Application</p>
               </a>
            </li>            

            <li>
               <a href="#">
                  <i class="pe-7s-plus"></i>
                  <p>Movement Application</p>
               </a>
            </li>

            <li>
               <a href="leaveApproval.php">
                  <i class="pe-7s-plus"></i>
                  <p>Application Approval</p>
               </a>
            </li>
            <li>
               <a href="holidays.php">
                  <i class="pe-7s-plus"></i>
                  <p>Holiday Management</p>
               </a>
            </li>
         </ul>   
      <?php } ?> 
   </div>   
</div>