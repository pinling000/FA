<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員</title>
    <link rel="stylesheet" href="assets/CSS/member.css">
    <link rel="stylesheet" href="assets/CSS/index.css">
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
        <div class="menu">
            <h3>會員專區</h3>
            <hr style="border:none; border-top: 1.5px solid #878C8F;">
            <a href="member.jsp"><b>會員資料</b></a>
            <hr style="border:none; border-top: 1px solid #878C8F;">
            <a href="record.jsp"><b>購買紀錄</b></a>
        </div>
    <%
        if (session.getAttribute("mail") != null) {
            String mail1=String.valueOf(session.getAttribute("mail"));
            sql = "SELECT * FROM `members` WHERE `mail` ='"+mail1+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            String pwd="",name="",phone=""; 
            while(rs.next())
            {
                pwd=rs.getString("pwd");
                name=rs.getString("name");
                phone=rs.getString("phone");
            }
            con.close();
    %>
 

            <div class="box">
                <p style="margin: 20px;">姓名:<%=name%></p>
                <p style="margin: 20px;">手機號碼:<%=phone%></p>
                <p style="margin: 20px;">信箱:<%=mail1%></p>
            </div>
            <button class="box" style="margin: 150px;" type="submit" onclick="location.href='user.jsp'">更改</button> 

    </main>
    <%
        }
        else{
            out.print("請重新登入");
            con.close();
        }
    %>
    <footer>
        
    </footer>
    
</body>
</html>