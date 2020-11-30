<?php include "header.php";
include('db_connection.php'); ?>


<h2>Find Course</h2>

<form method="post">
    <label for="courseid">Course ID</label>
    <input type="text" id="courseid" name="courseid">
    <input type="submit" name="submit" value="View Results">
</form>

<form method="post">
<label for="deptid">Department ID / Major</label>
<?php
$conn = OpenCon();
$resultSet = "SELECT DISTINCT Dep_id FROM Major";
$sql_dat = mysqli_query($conn, $resultSet)
?>

<select name="deptid">


<?php
while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
    $deptid = $rows["Dep_id"];
    echo "<option value='$deptid'>$deptid</option>";
} ?>
</select>
<input type="submit" name="submit1" value="View Results">
</form>

<?php
    if (isset($_POST['submit'])) {
  try {
    require "config.php";
    require "common.php";

    $connection = new PDO($dsn, $username, $password, $options);
        $sql = "SELECT *
          FROM Course
          WHERE Course_id = :courseid";
          $course = $_POST['courseid'];

        $statement = $connection->prepare($sql);
        $statement->bindParam(':courseid', $course, PDO::PARAM_STR);
        $statement->execute();

$result = $statement->fetchAll();
  } catch(PDOException $error) {
    echo $sql . "<br>" . $error->getMessage();
  }
}
?>

<?php include "footer.php"; ?>

<?php
    if (isset($_POST['submit1'])) {
  try {
    require "config.php";
    require "common.php";

    $connection1 = new PDO($dsn, $username, $password, $options);
      $sql1 = "SELECT *
      FROM Course c
      JOIN Major major_w ON major_w.Dep_id = c.Dept_id WHERE Dep_id = :deptid";
      $deptid = $_POST['deptid'];

        $statement1 = $connection1->prepare($sql1);
        $statement1->bindParam(':deptid', $deptid, PDO::PARAM_STR);
        $statement1->execute();

$result1 = $statement1->fetchAll();
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
  <th>Course ID</th>
  <th>Name</th>
  <th>Department ID</th>
  <th>Units</th>
  <th>Professor</th>
  <th>Time</th>
  <th>Course Location</th>
  <th>Students Enrolled</th>
  <th>Description</th>
</tr>
      </thead>
      <tbody>
        <?php    foreach ($result as $row) { ?>
                      <tr>
                <td><?php echo escape($row["Course_id"]); ?></td>
                <td><?php echo escape($row["Name"]); ?></td>
                <td><?php echo escape($row["Dept_id"]); ?></td>
                <td><?php echo escape($row["Units"]); ?></td>
                <td><?php echo escape($row["Professor"]); ?></td>
                <td><?php echo escape($row["Time"]); ?></td>
                <td><?php echo escape($row["Course_location"]); ?> </td>
                <td><?php echo escape($row["Student_enr"]); ?> </td>
                <td><?php echo escape($row["Description"]); ?> </td>
                      </tr>
                <?php } ?>
                  </tbody>
                  </table>
            
        <?php } else     { ?>
        <br>
    
        No results found for <?php echo escape($_POST['courseid']); ?>.
  <?php }
} ?>
  

<?php

if (isset($_POST['submit1'])) {
        if ($result1 && $statement1->rowCount() > 0) { ?>
                <h2>Results</h2>

    <table>
      <thead>
<tr>
  <th>Department ID</th>
  <th>Name</th>
  <th>Department Chair</th>
  
</tr>
      </thead>
        <tbody>
          <?php    foreach ($result1 as $row) { ?>
                        <tr>
                  <td><?php echo escape($row["Course_id"]); ?></td>
                  <td><?php echo escape($row["Name"]); ?></td>
                  <td><?php echo escape($row["Dept_id"]); ?></td>
                  <td><?php echo escape($row["Units"]); ?></td>
                  <td><?php echo escape($row["Professor"]); ?></td>
                  <td><?php echo escape($row["Time"]); ?></td>
                  <td><?php echo escape($row["Course_location"]); ?> </td>
                  <td><?php echo escape($row["Student_enr"]); ?> </td>
                  <td><?php echo escape($row["Description"]); ?> </td>
                        </tr>
                  <?php } ?>
                    </tbody>
                  </table>
            
        <?php } else     { ?>
        <br>
    
        No results found for <?php echo escape($_POST['deptid']); ?>.
  <?php }
} ?>



    <br>
    <a href="index.php">Back to home</a>

    <?php require "footer.php" ?>
