<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Hyeong Jin's Okky</title>
	<style type="text/css">
		body{
			height: 200vh;
		}
		*{
			margin: 0 auto;
		}
		#leftBar{
			width: 60px;
			height: 100vh;
			background: #0059ab;
			float: left;
			position: fixed;
			text-align: center;
		}
		#leftBar > a {
			width: 60px;
			height: 60px;
			text-decoration: none;
		}
		#leftBar > a > div{
			width: 60px;
			height: 60px;
			padding-top: 18px;
			box-sizing: border-box;
		}
		#leftBar > a > div > p{
			color: white;
			font-size: 20px;
		}
		#okLogo{
			padding-bottom: 200px;
		}

		#slideBar{
			width: 150px;
			height: 100vh;
			background: #004C92;
			float: left;
			position: fixed;
			margin-left: 60px;
		}
	</style>
</head>
<body>
	<nav id="leftBar">
		<a href="" id="okLogo">
			<div style="margin-bottom: 200px;">
				<img src="okLogo.png">
			</div>
		</a>
		<a href="" id="">
			<div>
				<p>ⓐ</p>
			</div>
		</a>
		<a href="">
			<div>
				<p>ⓑ</p>
			</div>
		</a>
		<a href="">
			<div>
				<p>ⓒ</p>
			</div>
		</a>
		<a href="">
			<div>
				<p>ⓓ</p>
			</div>
		</a>
		<a href="">
			<div>
				<p>ⓔ</p>
			</div>
		</a>
	</nav>
	<div id="slideBar">
		<h3></h3>
	</div>
</body>
</html>html>