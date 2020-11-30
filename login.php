<?php include "header.php"; ?>

<h2>Log In</h2>

<form method="post">
    <label for="studentid">Student ID</label>
    <input type="text" id="studentid" name="studentid">
    
    <input type="submit" name="submit" value="View Results">
</form>

<a href="index.php">Back to home</a>

<?php require "footer.php" ?>



<?php
    if (isset($_POST['submit'])) {
  try {
    require "config.php";
    require "common.php";

    $connection = new PDO($dsn, $username, $password, $options);
        $sql = "SELECT *
          FROM Student
          WHERE Student_id = :studentid";
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

    <?php include "footer.php"; ?>


<?php

if (isset($_POST['submit'])) {
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
                <td><?php echo escape($row["Course 1"]); ?></td>
                <td><?php echo escape($row["Course 2"]); ?> </td>
                <td><?php echo escape($row["Course 3"]); ?> </td>
                <td><?php echo escape($row["Course 4"]); ?> </td>
                      </tr>
                <?php } ?>
                  </tbody>
                  </table>
    <br/>

<?php
    
    $connection = new PDO($dsn, $username, $password, $options);
        $course1 = "SELECT *
          FROM Course
          WHERE Course_id = :Course 1";
        $course2 = "SELECT *
          FROM Course
          WHERE Course_id = :Course 2";
    
    
    if (True) { ?>
    <th>You do not have any time conflicts</th>
    <?php printf($course1);
    } ?>
    
        <h2>Add or Drop Course</h2>

        <form method="post">
            <label for="addid">Add Course</label>
            <input type="text" id="addid" name="addid">
            
            <input type="submit" name="submit" value="View Results">
        </form>

        <form method="post">
            <label for="dropid">Drop Course</label>
            <input type="text" id="dropid" name="dropid">
            
            <input type="submit" name="submit" value="View Results">
        </form>
        
        <?php } else     { ?>
       
        <br>
        <br>
        
        No results found for <?php echo escape($_POST['studentid']); ?>.
  <?php }
} ?>
  

<?php require "footer.php" ?>
