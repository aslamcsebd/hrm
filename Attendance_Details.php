<?php  
	session_start(); 
   include('connection.php'); 
	$hrm  =  hrm();

   date_default_timezone_set("Asia/Dhaka");
  	$today= date("Y-m-d");
?>
<?php include('header.php'); ?>
<div class="wrapper">   
   <?php include('left_header.php');   ?>
   
   <div class="main-panel">
      <?php include('nav_bar.php'); ?>  

      <div class="container"><br>

         <div class="container">

         	<?php 
            	if (isset($_SESSION['adminLogin'])) { ?>
 				<a href="Create_Account.php" class="btn btn-success btn-fill">Add Employee</a>
            <?php } ?>
            <div class="pull-right">
              	<?php 
            		if (isset($_SESSION['adminLogin'])) { ?>
						<a href="adminHome.php" class="btn btn-info btn-fill">Home</a>
					
					<?php } elseif (isset($_SESSION['employeeLogin'])) { ?>
						<a href="employeeHome.php" class="btn btn-info btn-fill">Home</a>						
					<?php }
            	 ?> 


               <a href="logout.php" class="btn btn-danger btn-fill">Logout</a>
            </div>

            <div class="text-center" style="font-weight: bold;">
  				<h4 style="margin: 0px;">
	  				<?php
	  					date_default_timezone_set("Asia/Dhaka");
	  					echo "Name this Month".' : '. $today= date("M-Y"); 
	  					echo "<br>Full Information".' : '.' ['.date("Y-m-d-D").']'; 
	  				 ?> 
	  			</h4> 				
  				</div>

         </div><br>
           <div id="page-wrapper">
            <div class="row">
               <div class="col-lg-12">
                  <div class="panel panel-default">
                     <div class="panel-heading text-center">
                        Employee Information
                     </div>
                     <div class="panel-body">              
			               <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
				  					<thead align="center">
				  						<th>Employee Id</th>
				  						<th>Full Name</th>
				  						<th>Total office day</th>
				  						<th>Present</th>
				  						<th>Absent</th>
				  						<th>Start Day</th>
				  						<th>Last Day</th>
				  						<th>Action</th>
				  					</thead>
				  					<tbody align="center">
				  						<?php 
									   	$month = date('m', strtotime($today));
									 		$year = date('Y', strtotime($today));

									 		if (isset($_SESSION['adminLogin'])) {
												$sql 	="select * from employee";
											}else{
												$sql 	="select * from employee where employee_id='$_SESSION[employee_id]'";
											}
											
											$result 	=	mysqli_query($hrm,$sql);								
								   	 ?>
				  						<?php while($row = mysqli_fetch_assoc($result)) { ?>
				  							<?php 
				  								$employee_id=$row['employee_id'];
				  								$full_name=$row['full_name'];
									 		
										 		$sql2="SELECT * FROM attendance where employee_id='$employee_id' AND (month(attendance_date)='$month' AND year(attendance_date)='$year') AND status='P'";							 		
												$result2=mysqli_query($hrm,$sql2);
												$Present = mysqli_num_rows($result2);

												$sql3="SELECT * FROM attendance where employee_id='$employee_id' AND (month(attendance_date)='$month' AND year(attendance_date)='$year') AND status='A'";							 		
												$result3=mysqli_query($hrm,$sql3);
												$Absent = mysqli_num_rows($result3);
												$office_Day=$Present + $Absent;
				  							?>
				  					
				  						<tr>
					  						<form action="Attendance_Details_Confirm.php" method="POST">	
					  							<td><label> <?= $employee_id; ?></label> </td>
					  							<td><label> <?= $full_name; ?></label> </td>
					  							<td><label> <?= $office_Day ?></label> </td> 
					  							<td><label> <?= $Present ?></label> </td> 
					  							<td><label> <?= $Absent ?></label> </td>
					  							<td><label> <input type="date" name="firstDay" required=""></label> </td>
					  							<td><label> <input type="date" name="lastDay" required=""></label> </td>
					  							<td class="text-center">
					  								<button type="submit" class="btn btn-success btn-fill pull-center" name="viewFull" value='<?= "$employee_id"; ?>'>View Full </button>
						  						</td>	
						  					</form>  							
				  						</tr>	  					
				  						<?php } ?>
				  					</tbody>
			  					</table> 				
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div> 

<?php unset($_SESSION['attendance_fail']); ?>
<?php unset($_SESSION['delete_successfully']); ?>
<?php include("footer.php"); ?>