<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "config.jsp" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Bungee+Inline&family=Lobster+Two&family=Pacifico&family=Rubik+Puddles&display=swap" rel="stylesheet">
    <title>Magic Ring</title>
    <link rel="stylesheet" href="assest/register.css">
    <link rel="stylesheet" href="assest/col.css">
</head>
<body>
    <header>
        <div class="headerleft">
        <a href="index.jsp"><img src="image/donut.png" width="50" height="50"></a>
            <div class="search">
                <img src="image/search.png" width="15" height="15"> 
                <input class="search_input" placeholder="Search"></input>
            </div>
        </div>

        <div class="headerright">
        <a href="allproduct.jsp">ALL PRODUCTS</a>
        <a href="">HOT!!</a> 
        <a href="">ABOUT US</a> 
        <a href="profile.jsp">MEMBER</a> 
        <a href="">EVEVNTS</a> 
        <a href="login.jsp"><img src="image/user.png" width="25" height="25"></a> <!--登入-->



        <div class="clearfix"></div>
    </header>
    <main>
        <div class="register">
            <h2>註冊會員</h2> 
            <hr size="3" color="black">
            <form action="reg.jsp" method="post">
				<div class="data">
					<p>&emsp;帳號</p><input type="text" name="username" class="input">
					<p>&emsp;真實姓名</p><input type="text" name="name" class="input">
					<p>&emsp;密碼</p><input type="text" name="password" class="input">
					<p>&emsp;電子郵件</p><input type="email" name="mail" class="input">
					<p>&emsp;電話</p><input type="tel" name="phonenumber" class="input">
					<p>&emsp;性別
					<input type="radio" name="sex" value="male">男生
					<input type="radio" name="sex" value="female">女生</p>
					<p>&emsp;出生年月日</p><input type="date" name="birth" class="input">
					<p>&emsp;地址</p><input type="text" name="address" class="input">
					<div>
						<input type="submit"  class="regbtn" value="註冊">
					</div>
				</div>
			</form>
            <hr size="3" color="black">    
            <h5>已經是會員了
                <a href="login.jsp"> ->馬上登入</a></h5>  
        </div>
    </main>
</body>
</html>
