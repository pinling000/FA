<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/CSS/inventory.css">
</head>
<body>
    <header class="logo">
        <a href="index.html"><img src="assets/image/logo.jpg" width="90px"></a>
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
        <li><a href="inventory.html">商品後台</a></li>
        <li><a href="order.jsp">訂單後台</a></li>
    </nav>
    <%
    if(con.isClosed())
        out.println("連線建立失敗");
    else{
        String name=request.getParameter("item_name");
        sql ="DELETE FROM `product` WHERE product_name='"+name+"'";
        int rec=con.createStatement().executeUpdate(sql); 
    if (rec>0){
        out.println("刪除成功");
        out.println("<a href = inventory.jsp>"+"返回"+"</a>");
    }
    else{
        out.println("刪除失敗");
        out.println("<a href = inventory.jsp>"+"返回"+"</a>");

    }
    con.close();
    }
    %>
</html>
