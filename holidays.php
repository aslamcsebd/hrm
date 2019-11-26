<?php  session_start(); ?>
<?php include('header.php'); ?>
<div class="wrapper">   
   <?php include('left_header.php'); ?>   
   <div class="main-panel">
      <?php include('nav_bar.php'); ?>
      <div class="container"><br>
         <div class="container">
            <?php 
               if (isset($_SESSION['adminLogin'])) { ?>
                  <a href="add_holiday.php" class="btn btn-success btn-fill">Add Holiday</a>
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
         </div><br>

         <?php if(isset($_SESSION['holiday_add_successfully'])) { ?>
            <?php 
            echo '<script type="text/javascript">
                     alert("Holiday add successfully.");
                  </script>';
            ?> 
         <?php } ?>

         <?php if(isset($_SESSION['holiday_update_successfully'])) { ?>
            <?php 
            echo '<script type="text/javascript">
                     alert("Holiday update successfully.");
                  </script>';
            ?> 
         <?php } ?>         

         <?php if(isset($_SESSION['holiday_delete_successfully'])) { ?>
            <?php 
            echo '<script type="text/javascript">
                     alert("Holiday delete successfully.");
                  </script>';
            ?> 
         <?php } ?> 

         <?php if(isset($_SESSION['holiday_delete_fail'])) { ?>
            <?php 
            echo '<script type="text/javascript">
                     alert("Holiday delete fail.");
                  </script>';
            ?> 
         <?php } ?> 
         
         <div id="page-wrapper">
            <div class="row">
               <div class="col-lg-12">
                  <div class="panel panel-default">
                     <div class="panel-heading text-center">
                        List of National Public holidays of Bangladesh in 2019
                     </div>
                     <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                           <thead>
                              <th>Date</th>
                              <th>Day</th>
                              <th>Holiday</th>
                              <th>About</th>
                           <?php if (isset($_SESSION['adminLogin'])) { ?>                              	
                              <th>Action</th>
                           <?php } ?>
                              
                           </thead>
                           <?php 
                              include('connection.php'); 
                              $hrm  =  hrm();                     
                              $sql  ="select * from holidays Order by date ASC";
                              $result  =  mysqli_query($hrm,$sql);
                           ?>

                           <tbody align="center">
                              <?php while($row = mysqli_fetch_assoc($result)) { ?>
                              <tr>
                              	<?php 
												date_default_timezone_set("Asia/Dhaka");
				                        $date=$row['date'];
				                        $day=date('l', strtotime($date));
                              	 ?>
                                 <td><label> <?= $date; ?></label> </td>
                                 <td><label> <?= $day; ?></label> </td>
                                 <td><label> <?= $row['holiday'] ?></label> </td>
                                 <td><label style="text-align: justify;"> <?= $row['about'] ?></label> </td>

                              <?php if (isset($_SESSION['adminLogin'])) { ?>                                 
                                 <td class="text-center">
                                    <a class="btn btn-primary btn-fill pull-center" href="holiday_edit.php?id=<?php echo $row['id']; ?>">Edit</a>

                                    <a class="btn btn-danger btn-fill pull-center" onclick="return confirm('Are you sure?')" href="holiday_delete.php?id=<?php echo $row['id']; ?>">Delete</a>                
                                 </td> 
                              <?php } ?>                        
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
<?php unset($_SESSION['holiday_add_successfully']); ?>
<?php unset($_SESSION['holiday_update_successfully']); ?>
<?php unset($_SESSION['holiday_delete_successfully']); ?>
<?php unset($_SESSION['holiday_delete_fail']); ?>
<?php include('footer.php'); ?>