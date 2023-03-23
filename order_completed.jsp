<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order_completed</title>
    <link rel="stylesheet" href="assets/CSS/order_completed.css">
</head>
<body>
    <header class="logo">
        <a href="index.jsp"><img src="assets/image/logo.jpg" width="90px"></a>
    </header>

    <nav>
        <li><a href="index.jsp">首頁</a></li>
        <li><a href="sales2.jsp">商品</a></li>
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
        <article>
            <div class="p">
                <h3>感謝您的購買</h3>
                <h4>訂單詳細資訊可至會員中心查詢</h4>
            </div>
            <div class="thank">
                <img src="assets/image/pic/11-1-1600x1260.png" width="200px">
            </div>
        </article>

    </main>

</body>
</html>