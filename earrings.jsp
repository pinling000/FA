<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>耳環</title>
    <link rel="stylesheet" href="assets/CSS/sales.css">
</head>
<%
    if(con.isClosed()){
        out.println("連線建立失敗");
    }
    else{                
%>
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
            <h3>全部商品</h3>
            <hr style="border:none; border-top: 1.5px solid #878C8F;">
            <a href="rings.jsp"><b>戒指</b></a>
            <hr style="border:none; border-top: 1px solid #878C8F;">
            <a href="earrings.jsp"><b>耳環</b></a>
            <hr style="border:none; border-top: 1px solid #878C8F;">
            <a href="necklaces.jsp"><b>項鍊</b></a>
        </div>
        <%
        sql="select * from `product` where `type`='耳環'";
        ResultSet rs=con.createStatement().executeQuery(sql);
        while(rs.next()){
            out.println("<form action='oneproduct.jsp'>");
                out.print("<div class='card'>");
                out.println("<input type='image' class='qwe' style='width:100%' src='"+rs.getString(7)+"' >");
                out.print("<h4>");
                out.print(rs.getString(2));
                out.print("</h4>");
                out.print("<p class='price'>");
                out.print("$"+rs.getString(4));
                out.print("</p>");
                out.print("</div>");
                out.println("<input type='hidden' name='pid' value='"+rs.getString(1)+"'>");
                out.println("</form>");
        }
        con.close();
        }
        %>
    </main>

    <footer>
    </footer>
</body>
</html>