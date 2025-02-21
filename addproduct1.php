<?php
if(isset($_POST['btnsubmit']))
{
include 'connects.php';
$pname=$_POST['pname'];
$pprice=$_POST['pprice'];
$pdesc=$_POST['pdesc'];
$pimage=$_FILES['pimg']['name'];

$conn=connectdb();
$query = "INSERT INTO addproduct(pname,pprice,pdesc,pimg)VALUES('$pname','$pprice','$pdesc','$pimg')";
//bind parameters for markers, where (s = string, i = integer, d = double,  b = blob)
$query_run=mysqli_query($conn,$query);

if($query_run)
{
	
	//move_uploaded_file($FILES["pimage"]["tmp_name"], "upload/".$_FILES["pimage"]["name"]);
	
    //echo '<script type="text/javascript">alert("Your image added successfull!"); window.location="addproduct.php"; </script>';

$filename=$_FILES["pimg"]["name"];
$tmpname=$_FILES["pimg"]["tmp_name"];
$folder="images/.$filename";

move_uploaded_file($tmpname,$folder);

echo '<script type="text/javascript">alert("Your image added successfull!"); window.location="addproduct1.php"; </script>';
}
else
{
	$_SESSION['status']="image stored failed";
	header('location: index.html');
	echo '<script type="text/javascript">alert("Your  fail to add news "); window.location="login.html"; </script>';
}


}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}






?>

