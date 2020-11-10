<!DOCTYPE html>
<html>
<body>
<!--
<?php
    
    if (isset($_POST['submit'])) {
      require "../config.php";

      try {
          $connection = new PDO($dsn, $username, $password, $options);

          $new_user = array(
            "firstname" => $_POST['firstname'],
            "lastname"  => $_POST['lastname'],
            "email"     => $_POST['email'],
            "age"       => $_POST['age'],
            "location"  => $_POST['location']
          );

          $sql = sprintf(
              "INSERT INTO %s (%s) values (%s)",
              "users",
              implode(", ", array_keys($new_user)),
              ":" . implode(", :", array_keys($new_user))
          );

          $statement = $connection->prepare($sql);
          $statement->execute($new_user);

      } catch(PDOException $error) {
        echo $sql . "<br>" . $error->getMessage();
      }

    }
?>

</body>
</html>

-->

<?php include "header.php"; ?><h2>Add a course</h2>

    <form method="post">
        <label for="courseid">Course ID</label>
        <input type="text" name="courseid" id="courseid">
        <label for="section">Section</label>
        <input type="text" name="section" id="section">
        <label for="coursename">Name</label>
        <input type="text" name="coursename" id="coursename">
        <label for="deptid">Deptartment ID</label>
        <input type="text" name="deptid" id="deptid">
        <label for="units">Units</label>
        <input type="text" name="units" id="units">
        <label for="professor">Professor</label>
        <input type="text" name="professor" id="professor">
        <label for="time">Time</label>
        <input type="text" name="time" id="time">
        <label for="deptid">Deptartment ID</label>
        <input type="text" name="deptid" id="deptid">
        <label for="location">Location</label>
        <input type="text" name="location" id="location">
        <label for="enrolledstudents">Students Enrolled</label>
        <input type="text" name="enrolledstudents" id="enrolledstudents">
        <label for="description">Description</label>
        <input type="text" name="description" id="description">
        <input type="submit" name="submit" value="Submit">
    </form>

    <a href="index.php">Back to home</a>

    <?php include "footer.php"; ?>
