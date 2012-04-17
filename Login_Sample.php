<?php
session_start();
ini_set("session.gc_maxlifetime", "1800");
require_once ('DB_Login.php');
//require_once ('DB.php'); //used for PEAR connector
// PEAR $DB_Conn
//
//$DB_Conn = DB::connect("mssql://$DB_UserName:$DB_Password@$DB_Host/$DB_Database"); 
//if (DB::isError($DB_Conn){
//	die("Could not connect: <br />".DB::errorMessage($DB_Conn));
//}

// non-PEAR $DB_Conn
$DB_Conn = mssql_connect($DB_Host, $DB_UserName, $DB_Password); 
IF (! $DB_Conn) {
	DIE ("Could not connect to Database. <br/>Please contact IT Administrator for assistance. <br/>");
}
//ELSE {echo "Connected Fine. <br />";}

$login = htmlentities($_REQUEST["Login"]);
$password = htmlentities($_REQUEST["Password"]);
$self = htmlentities($_SERVER['PHP_SELF']);

if ($login===''){
	echo (' <h1><center>United States Rare Coin and Bullion Reserve</center></h1><br/>
		<center><img src="\images\2006_$50_Buffalo_Proof.JPG"></center><br/>
		<form action="'.$self.'" method="POST" valign="center"><center>
		Please Enter a valid Username and Password.<br/><br/>
		<label>Login: <input type="text" name="Login" /></label>
		<label>Password: <input type="password" name="Password" /></label><br/>
		<input type="submit" value="Login" /><input type="reset" value="Clear"/></center>
		</form>
		');
}
else {
	//echo "Authenticating $login<br />";
	$DB_Select= mssql_select_db('CallCenter');
	if (!$DB_Select){
		die ("Unable to connect to Authentication Database. <br/>Please contact IT Administrator for assistance. <br/>");
	}
	$verify_login="Select Login, Password FROM dbo.Users Where RTRIM(Login)='$login' AND RTRIM(Password)='$password'";
	$result=mssql_query($verify_login, $DB_Conn);
	$result_rows=mssql_num_rows($result);
	if ($result_rows<=0){
		echo (' <h1><center>United States Rare Coin and Bullion Reserve</center></h1><br/>
		<center><img src="\images\2006_$50_Buffalo_Proof.JPG"></center><br/>
		<form action="'.$self.'" method="POST" valign="center"><center>
		Invalid Username and/or Password. Please re-try.<br/><br/>
		<label>Login: <input type="text" name="Login" /></label>
		<label>Password: <input type="password" name="Password" /></label><br/>
		<input type="submit" value="Login" /><input type="reset" value="Clear"/></center>
		</form>
		');
	}
	else {
		$_SESSION['User_ID']=$login;
		echo "Session ID is ".$_SESSION['User_ID'];
		header('Location: ./Loadbook.php');
	}
	$DB_Select= mssql_select_db('USRC_Main');
	if (!$DB_Select){
		die ("Unable to connect to History Database. <br/>Please contact IT Administrator for assistance. <br/>");
	}
}

?>
<html>
<head>
<title>Login Authentication</title>
</head>

</html>
