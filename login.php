<?php
session_start();
include 'connects.php';
if(isset($_POST['blogin']))
{
$email=test_input($_POST['email']);
$password=test_input($_POST['password']);
//$dpassword=md5($dpassword);

//mysql_connect("localhost", "root","");
$conn=connectdb();

	$sql="Select * from registerr where email= '".$email."' and password= '".$password."'";
	$result=$conn->query($sql);
	if($result->num_rows>0)
	{
			
				while($row=$result->fetch_assoc())
				{
				//$_SESSION['DID']=$row['id'];	
				$_SESSION['NAME']=$row['name'];	
				$_SESSION['EMAIL']=$row['email'];	
				}
				header("location: userdashbord.php");
	}
	else
	{
		//header("Location:login.html");
		echo'<script type="text/javascript">alert("Incorrect Username or Password");window.history.back(); </script>';
	
	}
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
