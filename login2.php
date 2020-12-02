<html>
<?php include "header.php"; ?>

<h2>Log In</h2>
   <head>
      <title>Update a Record in MySQL Database</title>
   </head>
<form method = "post" action = "<?php $_PHP_SELF ?>">
   
      
         <label for="studentid">Student ID</label>
         <input name = "studentid" type = "text"
            id = "studentid">
      
         <input name = "view" type = "submit"
               id = "view" value = "View">

         <label for="course_1">Add/Drop Course 1</label>
         <input name = "course_1" type = "text"
            id = "course_1">

         <input name = "update1" type = "submit"
               id = "update1" value = "Update">

         <label for="course_2">Add/Drop Course 2</label>
         <input name = "course_2" type = "text"
            id = "course_2">

         <input name = "update2" type = "submit"
               id = "update2" value = "Update">

         <label for="course_3">Add/Drop Course 3</label>
         <input name = "course_3" type = "text"
            id = "course_3">

         <input name = "update3" type = "submit"
               id = "update3" value = "Update">

         <label for="course_4">Add/Drop Course 4</label>
         <input name = "course_4" type = "text"
            id = "course_4">
      
         <input name = "update4" type = "submit"
               id = "update4" value = "Update">
         
</form>
<a href="index.php">Back to home</a>


   <body>
      <?php
         if(isset($_POST['update1'])) {
            

            $conn = mysqli_connect('localhost', 'root', '');
            
            if(! $conn ) {
               die('Could not connect: ' . mysql_error($conn));
            }
            
            $studentid = $_POST['studentid'];
            $course_1 = $_POST['course_1'];
            mysqli_select_db($conn, 'university');
            $course_enr = mysqli_query($conn, "SELECT Student_enr ". "FROM Course " ."WHERE Course_id = '$course_1'", 0);
             
            if (!$course_enr) {
                 printf("Error: %s\n", mysqli_error($conn));
                 exit();
            }
             
            $row = mysqli_fetch_array($course_enr);
             
            //echo $row[0];
             
            if ($row[0] < "30") {
             
                $sql = "UPDATE Student ". "SET Course_1 = '$course_1' ". "WHERE Student_id = '$studentid'";
                mysqli_select_db($conn, 'university');
                $retval = mysqli_query( $conn, $sql );
                 
                if(! $retval ) {
                die('Could not update data: ' . mysqli_error($conn));
                }
                echo "Updated data successfully\n";
            } else {
                echo "The Current Course is FULL";
            }
             
            mysqli_close($conn); ?>
<?php

require "config.php";
require "common.php";

$connection = new PDO($dsn, $username, $password, $options);
$sql = "SELECT * FROM Student WHERE Student_id = :studentid";
$stud = $_POST['studentid'];

$statement = $connection->prepare($sql);
$statement->bindParam(':studentid', $stud, PDO::PARAM_STR);
$statement->execute();

$result = $statement->fetchAll(); ?>
             
            <h2>Results</h2>

<table>
<thead>
<tr>
<th>Student_id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Advisor</th>
<th>Major</th>
<th>Course 1</th>
<th>Course 2</th>
<th>Course 3</th>
<th>Course 4</th>
</tr>
</thead>
<tbody>
<?php    foreach ($result as $row) { ?>
   <tr>
<td><?php echo escape($row["Student_id"]); ?></td>
<td><?php echo escape($row["First_name"]); ?></td>
<td><?php echo escape($row["Last_name"]); ?></td>
<td><?php echo escape($row["Advisor"]); ?></td>
<td><?php echo escape($row["Major"]); ?></td>
<td><?php echo escape($row["Course_1"]); ?></td>
<td><?php echo escape($row["Course_2"]); ?> </td>
<td><?php echo escape($row["Course_3"]); ?> </td>
<td><?php echo escape($row["Course_4"]); ?> </td>
   </tr>
<?php } ?>
</tbody>
</table>
 <br/>
<?php   } ?>
         


        <?php
           if(isset($_POST['update2'])) {
              

               $conn = mysqli_connect('localhost', 'root', '');
               
               if(! $conn ) {
                  die('Could not connect: ' . mysql_error($conn));
               }
               
               $studentid = $_POST['studentid'];
               $course_2 = $_POST['course_2'];
               mysqli_select_db($conn, 'university');
               $course_enr = mysqli_query($conn, "SELECT Student_enr ". "FROM Course " ."WHERE Course_id = '$course_2'", 0);
                
               if (!$course_enr) {
                    printf("Error: %s\n", mysqli_error($conn));
                    exit();
               }
                
               $row = mysqli_fetch_array($course_enr);
                
               //echo $row[0];
                
               if ($row[0] < "30") {
              
               
                  $sql = "UPDATE Student ". "SET Course_2 = '$course_2' ". "WHERE Student_id = '$studentid'";
                  mysqli_select_db($conn, 'university');
                  $retval = mysqli_query( $conn, $sql );
                   
                  if(! $retval ) {
                      die('Could not update data: ' . mysqli_error($conn));
                      }
                      echo "Updated data successfully\n";
                  } else {
                      echo "The Current Course is FULL";
                  }
                   
                  mysqli_close($conn); ?>
   <?php

   require "config.php";
   require "common.php";

   $connection = new PDO($dsn, $username, $password, $options);
   $sql = "SELECT * FROM Student WHERE Student_id = :studentid";
   $stud = $_POST['studentid'];

   $statement = $connection->prepare($sql);
   $statement->bindParam(':studentid', $stud, PDO::PARAM_STR);
   $statement->execute();

   $result = $statement->fetchAll(); ?>
                
               <h2>Results</h2>

   <table>
   <thead>
   <tr>
   <th>Student_id</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Advisor</th>
   <th>Major</th>
   <th>Course 1</th>
   <th>Course 2</th>
   <th>Course 3</th>
   <th>Course 4</th>
   </tr>
   </thead>
   <tbody>
   <?php    foreach ($result as $row) { ?>
      <tr>
   <td><?php echo escape($row["Student_id"]); ?></td>
   <td><?php echo escape($row["First_name"]); ?></td>
   <td><?php echo escape($row["Last_name"]); ?></td>
   <td><?php echo escape($row["Advisor"]); ?></td>
   <td><?php echo escape($row["Major"]); ?></td>
   <td><?php echo escape($row["Course_1"]); ?></td>
   <td><?php echo escape($row["Course_2"]); ?> </td>
   <td><?php echo escape($row["Course_3"]); ?> </td>
   <td><?php echo escape($row["Course_4"]); ?> </td>
      </tr>
   <?php } ?>
   </tbody>
   </table>
    <br/>
   <?php   } ?>

        <?php
           if(isset($_POST['update3'])) {
              

               $conn = mysqli_connect('localhost', 'root', '');
               
               if(! $conn ) {
                  die('Could not connect: ' . mysql_error($conn));
               }
               
               $studentid = $_POST['studentid'];
               $course_3 = $_POST['course_3'];
               mysqli_select_db($conn, 'university');
               $course_enr = mysqli_query($conn, "SELECT Student_enr ". "FROM Course " ."WHERE Course_id = '$course_3'", 0);
                
               if (!$course_enr) {
                    printf("Error: %s\n", mysqli_error($conn));
                    exit();
               }
                
               $row = mysqli_fetch_array($course_enr);
                
               //echo $row[0];
                
               if ($row[0] < "30") {
              
               
              $sql = "UPDATE Student ". "SET Course_3 = '$course_3' ". "WHERE Student_id = '$studentid'";
              mysqli_select_db($conn, 'university');
              $retval = mysqli_query( $conn, $sql );
               
              if(! $retval ) {
                  die('Could not update data: ' . mysqli_error($conn));
                  }
                  echo "Updated data successfully\n";
              } else {
                  echo "The Current Course is FULL";
              }
               
              mysqli_close($conn); ?>
   <?php

   require "config.php";
   require "common.php";

   $connection = new PDO($dsn, $username, $password, $options);
   $sql = "SELECT * FROM Student WHERE Student_id = :studentid";
   $stud = $_POST['studentid'];

   $statement = $connection->prepare($sql);
   $statement->bindParam(':studentid', $stud, PDO::PARAM_STR);
   $statement->execute();

   $result = $statement->fetchAll(); ?>
                
               <h2>Results</h2>

   <table>
   <thead>
   <tr>
   <th>Student_id</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Advisor</th>
   <th>Major</th>
   <th>Course 1</th>
   <th>Course 2</th>
   <th>Course 3</th>
   <th>Course 4</th>
   </tr>
   </thead>
   <tbody>
   <?php    foreach ($result as $row) { ?>
      <tr>
   <td><?php echo escape($row["Student_id"]); ?></td>
   <td><?php echo escape($row["First_name"]); ?></td>
   <td><?php echo escape($row["Last_name"]); ?></td>
   <td><?php echo escape($row["Advisor"]); ?></td>
   <td><?php echo escape($row["Major"]); ?></td>
   <td><?php echo escape($row["Course_1"]); ?></td>
   <td><?php echo escape($row["Course_2"]); ?> </td>
   <td><?php echo escape($row["Course_3"]); ?> </td>
   <td><?php echo escape($row["Course_4"]); ?> </td>
      </tr>
   <?php } ?>
   </tbody>
   </table>
    <br/>
   <?php   } ?>

        <?php
           if(isset($_POST['update4'])) {
              

               $conn = mysqli_connect('localhost', 'root', '');
               
               if(! $conn ) {
                  die('Could not connect: ' . mysql_error($conn));
               }
               
               $studentid = $_POST['studentid'];
               $course_4 = $_POST['course_4'];
               mysqli_select_db($conn, 'university');
               $course_enr = mysqli_query($conn, "SELECT Student_enr ". "FROM Course " ."WHERE Course_id = '$course_4'", 0);
                
               if (!$course_enr) {
                    printf("Error: %s\n", mysqli_error($conn));
                    exit();
               }
                
               $row = mysqli_fetch_array($course_enr);
                
               //echo $row[0];
                
               if ($row[0] < "30") {
              
               
              $sql = "UPDATE Student ". "SET Course_4 = '$course_4' ". "WHERE Student_id = '$studentid'";
              mysqli_select_db($conn, 'university');
              $retval = mysqli_query( $conn, $sql );
               
              if(! $retval ) {
                  die('Could not update data: ' . mysqli_error($conn));
                  }
                  echo "Updated data successfully\n";
              } else {
                  echo "The Current Course is FULL";
              }
               
              mysqli_close($conn); ?>
   <?php

   require "config.php";
   require "common.php";

   $connection = new PDO($dsn, $username, $password, $options);
   $sql = "SELECT * FROM Student WHERE Student_id = :studentid";
   $stud = $_POST['studentid'];

   $statement = $connection->prepare($sql);
   $statement->bindParam(':studentid', $stud, PDO::PARAM_STR);
   $statement->execute();

   $result = $statement->fetchAll(); ?>
                
               <h2>Results</h2>

   <table>
   <thead>
   <tr>
   <th>Student_id</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Advisor</th>
   <th>Major</th>
   <th>Course 1</th>
   <th>Course 2</th>
   <th>Course 3</th>
   <th>Course 4</th>
   </tr>
   </thead>
   <tbody>
   <?php    foreach ($result as $row) { ?>
      <tr>
   <td><?php echo escape($row["Student_id"]); ?></td>
   <td><?php echo escape($row["First_name"]); ?></td>
   <td><?php echo escape($row["Last_name"]); ?></td>
   <td><?php echo escape($row["Advisor"]); ?></td>
   <td><?php echo escape($row["Major"]); ?></td>
   <td><?php echo escape($row["Course_1"]); ?></td>
   <td><?php echo escape($row["Course_2"]); ?> </td>
   <td><?php echo escape($row["Course_3"]); ?> </td>
   <td><?php echo escape($row["Course_4"]); ?> </td>
      </tr>
   <?php } ?>
   </tbody>
   </table>
    <br/>
   <?php   } ?>

        <?php
            if (isset($_POST['view'])) {
          try {
            require "config.php";
            require "common.php";

            $connection = new PDO($dsn, $username, $password, $options);
            $sql = "SELECT * FROM Student WHERE Student_id = :studentid";
            $stud = $_POST['studentid'];

            $statement = $connection->prepare($sql);
            $statement->bindParam(':studentid', $stud, PDO::PARAM_STR);
            $statement->execute();

        $result = $statement->fetchAll();
          } catch(PDOException $error) {
            echo $sql . "<br>" . $error->getMessage();
          }
        }
            ?>

        <?php
            if (isset($_POST['view'])) {
                    if ($result && $statement->rowCount() > 0) { ?>
                            <h2>Results</h2>

<table>
  <thead>
<tr>
<th>Student_id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Advisor</th>
<th>Major</th>
<th>Course 1</th>
<th>Course 2</th>
<th>Course 3</th>
<th>Course 4</th>
</tr>
  </thead>
  <tbody>
    <?php    foreach ($result as $row) { ?>
                  <tr>
            <td><?php echo escape($row["Student_id"]); ?></td>
            <td><?php echo escape($row["First_name"]); ?></td>
            <td><?php echo escape($row["Last_name"]); ?></td>
            <td><?php echo escape($row["Advisor"]); ?></td>
            <td><?php echo escape($row["Major"]); ?></td>
            <td><?php echo escape($row["Course_1"]); ?></td>
            <td><?php echo escape($row["Course_2"]); ?> </td>
            <td><?php echo escape($row["Course_3"]); ?> </td>
            <td><?php echo escape($row["Course_4"]); ?> </td>
                  </tr>
            <?php } ?>
              </tbody>
              </table>
                <br/>
<?php   } ?>
<?php   } ?>

           
      
   </body>
</html>
