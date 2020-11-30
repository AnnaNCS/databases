<?php include "header.php";
include('db_connection.php'); ?>
    <h2>Navigate</h2>

<!DOCTYPE HTML>
<html>
    <style>

.inv {
   display: none;
}
   </style>
  
<form>
<select name="list" id="list" accesskey="target">
    <option value='none' selected>Choose a Selection</option>
    <option value="register.php">All Courses</option>
    <option value="majors.php">All Majors</option>
    <option value="professors.php">All Professors</option>
    <option value="students.php">All Students</option>
</select>
<input type=button value="Go" onclick="goToNewPage()" />
</form>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    

<script type="text/javascript">
    function goToNewPage()
    {
        var url = document.getElementById('list').value;
        if(url != 'none') {
            window.location = url;
        }
    }
</script>
<br/>
<a href="index.php">Back to home</a>
</body>
</html>
         
