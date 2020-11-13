<?php include "header.php";
include('db_connection.php'); ?>

    <h2>Add a course</h2>

    <form method="post">
    
        <label for="courseid">Course ID</label>
        <input type="text" name="courseid" id="courseid">

        <label for="coursename">Name</label>
        <input type="text" name="coursename" id="coursename">


        <label for="deptid">Department ID</label>
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


        <label for="units">Units</label>
        <input type="text" name="units" id="units">

        
        <label for="professor">Professor</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Professor_id FROM Professor";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="professor">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $prof = $rows["Professor_id"];
            echo "<option value='$prof'>$prof</option>";
        } ?>
        </select>


        <label for="time">Time</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Time FROM Course";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="time">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $time = $rows["Time"];
            echo "<option value='$time'>$time</option>";
        } ?>
        </select>
        

        <label for="location">Location</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Course_location FROM Course";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="location">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $loc = $rows["Course_location"];
            echo "<option value='$loc'>$loc</option>";
        } ?>
        </select>

        <label for="enrolledstudents">Students Enrolled</label>
        <input type="text" name="enrolledstudents" id="enrolledstudents">

        <label for="description">Description</label>
        <input type="text" name="description" id="description">

        <label for="submit"></label>
        <input type="submit" name="submit" value="Submit">
        
    </form>

    <a href="index.php">Back to home</a>

    <?php include "footer.php"; ?>

<?php

if (isset($_POST['submit'])) {
    require "config.php";
  $connection = new PDO($dsn, $username, $password, $options);

  try {
    $new_course = array(
    "Course_id" => $_POST['courseid'],
    "Name" => $_POST['coursename'],
    "Dept_id" => $_POST['deptid'],
    "Units" => $_POST['units'],
    "Professor" => $_POST['professor'],
    "Time" => $_POST['time'],
    "Course_location" => $_POST['location'],
    "Student_enr" => $_POST['enrolledstudents'],
    "Description" => $_POST['description'],
    );
      
$sql = sprintf(
    "INSERT INTO %s (%s) values (%s)",
    "Course",
    implode(", ", array_keys($new_course)),
    ":" . implode(", :", array_keys($new_course))
);

$statement = $connection->prepare($sql);
$statement->execute($new_course);
}

  catch(PDOException $error) {
    echo $sql . "<br>" . $error->getMessage();
  }

}

?>
