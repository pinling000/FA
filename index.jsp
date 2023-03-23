<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首頁</title>
    <link rel="stylesheet" href="assets/CSS/index.css">
    <script src="assets/JS/index.js" defer></script>
</head>
<body>
    <header class="logo">
        <a href="index.jsp"><img src="assets/image/logo.jpg" width="90px"></a>
        <div class="search">
            <form action="search_sales.jsp">
                <input type="text" placeholder="搜尋" name="srch">
                <button type="submit"><img src="assets/image/search.png"></button>
            </form>
        </div>
    </header>

    <nav>
        <li><a href="index.jsp">首頁</a></li>
        <li><a href="sales.jsp">商品</a></li>
        <li><a href="shoppingcart.jsp">購物車</a></li>
        <li><a href="us.jsp">關於我們</a></li>
        <li>
            <a href="">會員</a>
            <ul class="second">
                <%if (session.getAttribute("mail")==null){%>
                <li><a href="signin.jsp">登入</a></li>
                <li><a href="signup.jsp">註冊</a></li>
                <%}else{%>
                <li><a href="member.jsp">會員中心</a></li>
                <li><a href="logout.jsp">登出</a></li>
                <%}%>
            </ul>
        </li>
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

        <div class="container">
            <div class="saleschart">
                <h3>熱銷排行榜</h3>
                <hr style="border:none; border-top: 1.5px solid #878C8F;">                   
                <p><b>TOP1</b></p> 
                <div class="topimg">
                    <a href="oneproduct.jsp"><img src="assets/image/earrings1/1654628453338.jpg" width="120px" height="120px"></a>  
                </div>
                <p class="topp">123</p>
                <hr style="border:none; border-top: 1px solid #878C8F;"> 
                
                <p><b>TOP2</b></p> 
                <div class="topimg">
                    <a href="oneproduct.jsp"><img src="assets/image/earrings1/1654628453338.jpg" width="120px" height="120px"></a> 
                </div>
                <p class="topp">123</p>
                <hr style="border:none; border-top: 1px solid #878C8F;">     
                
                <p><b>TOP3</b></p> 
                <div class="topimg">
                    <a href="oneproduct.jsp"><img src="assets/image/earrings1/1654628453338.jpg" width="120px" height="120px"></a>  
                </div>
                <p class="topp">123</p>  

            </div>
        </div>
    </main>
    
    <footer>
        <%
        sql="SELECT * FROM `counter`";
        ResultSet rs=con.createStatement().executeQuery(sql);
        rs.next();
        String count=rs.getString(1);
        int count1=Integer.parseInt(count);
        if(session.isNew()){
            count1+=1;
            sql="UPDATE `counter` SET `count`='"+count1+"'";
            con.createStatement().execute(sql);
        }
        out.println("您是第"+count1+"名訪客"); 
        %>
                <br>Copyrgiht @ 2022 All rights reserved

    </footer>
</body>
</html>