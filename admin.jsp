<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/CSS/index.css">
    <script src="assets/JS/index.js" defer></script>
</head>
<body>
    <header class="logo">
        <a href="index.jsp"><img src="assets/image/logo.jpg" width="90px"></a>
    </header>

    <nav>
        <li><a href="index.jsp">首頁</a></li>
        <li><a href="inventory.jsp">商品管理</a></li>
        <li><a href="order.jsp">訂單管理</a></li>
        <li><a href="logout.jsp">登出</a></li>
    </nav>

    <main>
        <div class="slideshow">
            <div class="slides">
              <img src="assets/image/index/1654666145245.jpg" style="width:100%">
            </div>
            
            <div class="slides">
              <img src="assets/image/index/1654666985301.jpg" style="width:100%">
            </div>
            
            <div class="slides">
              <img src="assets/image/index/1654667777555.jpg" style="width:100%">
            </div>
            
            <a class="prev" onclick="changeSlides(-1)"><b>❮</b></a>
            <a class="next" onclick="changeSlides(1)"><b>❯</b></a>
        </div><br>
            
        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span> 
        </div>
    </main>
    <footer>
        
    </footer>
</body>
</html>