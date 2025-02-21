<?php 
session_start();
$conn = mysqli_connect("localhost","root","","ayurbazaar");
if(isset($_POST['btnsubmit']))
{
$pname=$_POST['pname'];
$pprice=$_POST['pprice'];
$pdesc=$_POST['pdesc'];
$pimg=$_FILES['pimg']['name'];



$query = "INSERT INTO addproduct(pname,pprice,pdesc,pimg) VALUES('$pname','$pprice','$pdesc','$pimg')";
$query_run=mysqli_query($conn,$query);

if($query_run)
{
	
	//move_uploaded_file($FILES["pimg"]["tmp_name"], "upload/".$_FILES["pimg"]["name"]);
    //cho '<script type="text/javascript">alert("Your news added  successfull!"); window.location="addproduct.php"; </script>';
	//$_SESSION['status']="image stored successfully";
	//header('location: addnews.php');
$filename=$_FILES["pimg"]["name"];
$tmpname=$_FILES["pimg"]["tmp_name"];
$folder="images/.$filename";
echo $folder;
move_uploaded_file($tmpname,$folder);
	
}
else
{
	$_SESSION['status']="image stored failed";
	header('location: index.html');
	echo '<script type="text/javascript">alert("Your  fail to add news "); window.location="login.html"; </script>';
}
}
?>