<?php
$hostname="localhost";
$username="root";
$password="agalya32843";
$db="TLF";
$connection=new mysqli($hostname,$username,$password,$db);
if ($connection->connect_error)
	echo("db error happend");
mysqli_set_charset($connection,"utf8");
//if ((isset($_POST["member_name"])) and (isset($_POST["address"])))
{
$member_name= $_POST["member_name"];
echo empty($member_name);
$address=$_POST["address"]; 
if ((empty($member_name)!=1) and (empty($address)!=1))
{
$sql="insert into members(name,address) values('".$member_name."','".$address."');";
$result=$connection->query($sql);
mysqli_close($connection);
echo "record saved";
}
}
echo("<a href='http://localhost/input_form.html'>back to input</a>");
?>