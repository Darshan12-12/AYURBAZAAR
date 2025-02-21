<?php
//session_start(); 
if(isset($_POST['btnsubmit']))
{
include 'connects.php';
$name=test_input($_POST['name']);
$uemail=test_input($_POST['uemail']);
$mobile=test_input($_POST['mobile']);
$subject=test_input($_POST['subject']);
$message=test_input($_POST['message']);
$cdate= date('d-m-y');


//mysql_connect("localhost", "root","");
$mysqli = connectdb();
$query = "INSERT INTO contact(name,email,mobile,subject,message,cdate) VALUES(?,?,?,?,?,?)";
$statement = $mysqli->prepare($query);
//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
$statement->bind_param('ssssss',$name,$uemail,$mobile,$subject,$message,$cdate);



if($statement->execute())
{
	echo '<script type="text/javascript">alert("Your Message sent to Admin successfully!"); window.location="index.html"; </script>';
}
else
{
   echo '<script type="text/javascript">alert("Error... in posting feedback try again!"); </script>';
}
$statement->close();
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
