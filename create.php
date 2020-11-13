<?php include "header.php"; ?>

    <h2>Add a course</h2>

    <form method="post">
    
        <label for="courseid">Course ID</label>
        <input type="text" name="courseid" id="courseid">

        <label for="coursename">Name</label>
        <input type="text" name="coursename" id="coursename">

        <label for="deptid">Department ID</label>
        <?php
        require "config.php";
        $connection = new PDO($dsn, $username, $password, $options);
        $resultSet = $connection->query("SELECT Dept_id FROM Course");
        ?>
        
        <select name="deptid">
    
        <?php
        
        while ($rows = $resultSet->fetch(PDO::FETCH_ASSOC)){
            $dept_name = $rows["deptid"];
            echo "<option value='$deptid'>$deptid</option>";
        } ?>
        </select>

        <label for="units">Units</label>
        <input type="text" name="units" id="units">

        <label for="professor">Professor</label>
        <input type="text" name="professor" id="professor">

        <label for="time">Time</label>
        <input type="text" name="time" id="time">

        <label for="location">Location</label>
        <input type="text" name="location" id="location">

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
