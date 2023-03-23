<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員註冊</title>
    <link rel="stylesheet" href="assets/CSS/signup.css">
    <script src="check.js"></script>
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
                <li><a href="login.jsp">會員中心</a></li>
                <li><a href="logout.jsp">登出</a></li>
                <%}%>
            </ul>
        </li>
    </nav>

    <main>
        <form name="user" method="post" action="signDB_new.jsp">
            <div class="box">
                <h2>註冊</h2>
                <label class="label_input"><b>用戶名稱</b></label>
                <input id="name" type="text" placeholder="輸入名稱" name="name" onblur="checkname()"><br>
                <span id="nullname" style="color: red;"></span><br>
                <label class="label_input"><b>密碼</b></label>
                <input id="pwd" type="password" placeholder="輸入密碼" name="pwd" onblur="checkpass()"><br>
                <span id="nullpass" style="color: red;"></span><br>
                <label class="label_input"><b>信箱</b></label>
                <input id="mail" type="text" placeholder="輸入信箱" name="mail" onblur="checkmail()"><br>
                <span id="nullmail" style="color: red;"></span><br>
                <label  class="label_input"><b>手機號碼</b></label>
                <input  type="text" placeholder="輸入手機號碼" name="phone" onclick="checkphone()"><br>
                <span id="nullmail" style="color: red;"></span><br>
                <input id="btn" class="button" type="submit" value="註冊" onclick="datacheck()">
            </div>
        </form>
        
    </main>

    <footer>
    </footer>
    
</body>
</html>