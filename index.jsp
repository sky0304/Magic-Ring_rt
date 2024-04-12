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
    <link
        href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Bungee+Inline&family=Lobster+Two&family=Pacifico&family=Rubik+Puddles&display=swap"
        rel="stylesheet">
    <title>Magic Ring</title>
    <link rel="stylesheet" href="assest/index.css">
	<style>
	
</style>
</head>

<body>
    <header>
        <img src="image/donut.png" alt="logo">
        MAGIC RING
    </header>
    <nav>
       <div class="nav">
            <ul class="drop-down-menu">
                <li class="list1"><a href="allproduct.jsp">ALL&ensp;PRODUCTS</a>
                    <ul>
                        <li class="list2"><a href="allproduct.jsp">全部商品</a>
                        </li>
                        <li class="list2"><a href="ponde.jsp">魔法圈</a>
                        </li>
                        <li class="list2"><a href="crispy.jsp">脆餅</a>
                        </li>
                        <li class="list2"><a href="donut.jsp">甜甜圈</a>
                    </ul>
                </li>
				
                <li class="list1"><a href="hot.jsp">HOT</a></li>
                <li class="list1"><a href="about.jsp">ABOUT&ensp;US</a></li>
	<%
		if(session.getAttribute("name") != null ){                    
    %>
                <li class="list1"><a href="logout.jsp">LOGOUT</a></li>
				<%}else{%>
				<li class="list1"><a href="login.jsp">LOGIN</a></li>
				<%}%>
            </ul>
        </div>
        <div class="item">
		
            <a href="check.jsp"><img src="image/shopping-cart.png" alt="cart"></a>
            <a href="profile.jsp"><img src="image/user.png" alt="profile"></a>

        </div>
    </nav>
    <main>
        <div class="left">
            <div class="slogan">
                圈圈圓圓圈圈<br>
                甜甜黏黏甜甜
            </div>
            <div class="btn">
                <input type="button" class="selbtn" value="SELECT!!" onclick="location.href='allproduct.jsp'">
            </div>
        </div>
        <div class="right">
            <!-- Slideshow container -->
            <div class="slideshow-container">

                <!-- Full-width images with number and caption text -->
                <div class="mySlides fade">
                    <img src="image/ring.jpg">
                </div>

                <div class="mySlides fade">
                    <img src="image/Salted.jpg">
                </div>

                <div class="mySlides fade">
                    <img src="image/cookie.jpg">
                </div>

                <!-- Next and previous buttons -->
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
        </div>

        </div>
    </main>
	<%
		int count;
		String countString;
		sql="SELECT * FROM `counter`" ;
		ResultSet rs=con.createStatement().executeQuery(sql);
		if (rs.next()){
			countString = rs.getString(1);
			count = Integer.parseInt(countString);
			if (session.isNew()){
				count=count + 1;
				countString = String.valueOf(count);
				sql="UPDATE `counter` SET `count` = " + countString ;
				con.createStatement().execute(sql);
				session.setAttribute("visitor",count);
			}
		}
		sql="SELECT * FROM `counter`" ;
		ResultSet visitor=con.createStatement().executeQuery(sql);
		visitor.next();
	%>
    <footer>
        <button id="event">
            <img src="image/doughnut.png" width="32" height="32">
            &emsp;&emsp;歡慶中秋節 買 5 送 2 ~&emsp;&emsp;
            <img src="image/doughnut.png" width="32" height="32">&nbsp;&nbsp;&nbsp;&nbsp;
			瀏覽人數:&nbsp;<%= visitor.getString(1) %>
        </button>
		
        <!--events / 廣告-->
        <dialog id="eve">
            <p class="dragon">
                慶祝端午節&emsp;買5送2<br>
                抹茶甜甜圈&emsp;特賣$30<br><br>
                    <a href="allproduct.jsp"><img style="border-radius: 50%;" src="image/matcha.png" width="246.75" height="181.875"></a>
                <br><br><br><br>
                <button id="close">X</button>
            </p>
        </dialog>
        <!--events / 廣告-->
    </footer>

    <script>
        //廣告
        let btn = document.querySelector("#event");
        let eve = document.querySelector("#eve");
        let close = document.querySelector("#close");
        btn.addEventListener("click", function () {
            eve.showModal();
        })
        close.addEventListener("click", function () {
            eve.close();
        })
        //廣告
       
        var slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>

</body>

</html>
