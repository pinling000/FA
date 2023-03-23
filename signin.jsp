<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員登入</title>
    <link rel="stylesheet" href="assets/CSS/signin.css">
</head>
<body>
    <header class="logo">
        <img src="assets/image/logo.jpg" width="90px">
        <div class="search">
            <form action="search_sales.jsp">
                <input type="text" placeholder="搜尋" name="srch">
                <button type="submit"><img src="assets/image/search.png"></button>
            </form>
        </div>
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
        <form method="post" action="check.jsp">
            <div class="box">
                <h2>登入</h2>
                <label class="label_input"><b>帳號</b></label>
                <input type="text" placeholder="輸入信箱" name="mail">
                <label class="label_input"><b>密碼</b></label>
                <input type="password" placeholder="輸入密碼" name="pwd">
                <input type="submit"  class="btn" value="登入">
                <p>沒有會員嗎？</p>
                <button type="button" onclick="location.href='signup.jsp'" class="btn">會員註冊</button>
            </div>
        </form>
        
    </main>

    <footer>
    </footer>
    
</body>
</html>