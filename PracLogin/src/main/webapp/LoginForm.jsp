<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body{
		padding:0;
		margine:0;
		box-sizing:border-box;
		overflow: hidden;
		font-family: 'Montserrat', sans-serif;
	}
	.box{
		width : 100%;
		height : 100vh;
		position: absolute;
		display: flex;
		align-items: center;
		justify-content: center;
	}	
	.frm{
		display:flex;
		justify-content: center;
		width:33%;
		height:40vh;
		border-width:0px;
	}
	.text,.pass{
		border-left-width:0px;
		border-right-width:0px;
		border-top-width:0px;
		border-bottom:1px solid gray;
		margin-top: 10%;
		padding-left:15px;
		width: 380px;
		height: 50px;
		font-size:20px;
		background-color: white;
	}
	.btn{
		margin-top: 40px;
		width: 400px;
		height: 50px;
		font-size:20px;
		background-color: white;
		border-radius:15px;
		border-width:1px;
		border-color:gray;
	}
</style>
</head>
<body>
<div class="box">
	<div class="frm">
		<form action="Login" method="Post">
        	<input type="text" placeholder="Username" name="uName" class="text"><br>
        	<input type="password" placeholder="Password" name="uPwd" class="pass"><br>
        	<input type="submit" class="btn" value="Enter">
    	</form>
	</div>
</div>
</body>
</html>