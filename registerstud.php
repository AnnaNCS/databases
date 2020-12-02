<?php include "header.php";
include('db_connection.php'); ?>

    <h2>Register</h2>

    <form method="post">
    
        <label for="studentid">Student ID</label>
        <input type="text" name="studentid" id="studentid">

        <label for="firstname">First Name</label>
        <input type="text" name="firstname" id="firstname">

        <label for="lastname">Last Name</label>
        <input type="text" name="lastname" id="lastname">


        <label for="advisor">Advisor</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Professor_id FROM Professor";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="advisor">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $advisor = $rows["Professor_id"];
            echo "<option value='$advisor'>$advisor</option>";
        } ?>
        </select>


        <label for="major">Major</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Dep_id FROM Major";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="major">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $major = $rows["Dep_id"];
            echo "<option value='$major'>$major</option>";
        } ?>
        </select>

        
        <label for="course1">Course 1</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Course_id FROM Course";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="course1">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $course1 = $rows["Course_id"];
            echo "<option value='$course1'>$course1</option>";
        } ?>
        </select>


        <label for="course2">Course 2</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Course_id FROM Course";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="course2">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $course2 = $rows["Course_id"];
            echo "<option value='$course2'>$course2</option>";
        } ?>
        </select>
        

        <label for="course3">Course 3</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Course_id FROM Course";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="course3">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $course3 = $rows["Course_id"];
            echo "<option value='$course3'>$course3</option>";
        } ?>
        </select>

        <label for="course4">Course 4</label>
        <?php
        $conn = OpenCon();
        $resultSet = "SELECT DISTINCT Course_id FROM Course";
        $sql_dat = mysqli_query($conn, $resultSet)
        ?>
        <select name="course4">
        <?php
        while ($rows = mysqli_fetch_array($sql_dat, MYSQLI_ASSOC)){
            $course4 = $rows["Course_id"];
            echo "<option value='$course4'>$course4</option>";
        } ?>
        </select>

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
    $new_stud = array(
    "Student_id" => $_POST['studentid'],
    "First_name" => $_POST['firstname'],
    "Last_name" => $_POST['lastname'],
    "Advisor" => $_POST['advisor'],
    "Major" => $_POST['major'],
    "Course_1" => $_POST['course1'],
    "Course_2" => $_POST['course2'],
    "Course_3" => $_POST['course3'],
    "Course_4" => $_POST['course4'],
    );
      
$sql = sprintf(
    "INSERT INTO %s (%s) values (%s)",
    "Student",
    implode(", ", array_keys($new_stud)),
    ":" . implode(", :", array_keys($new_stud))
);

$statement = $connection->prepare($sql);
$statement->execute($new_stud);
}

  catch(PDOException $error) {
    echo $sql . "<br>" . $error->getMessage();
  }

}

?>
