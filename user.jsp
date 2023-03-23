<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>

    <link rel="stylesheet" href="assets/CSS/member.css">
    <link rel="stylesheet" href="assets/CSS/index.css">

<html>
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
            String  pwd="",name="",phone=""; 
            while(rs.next())
            {
                pwd=rs.getString("pwd");
                name=rs.getString("name");
                phone=rs.getString("phone");
            }
            con.close();
    %>
        哈嘍，<%=name%> <a href='signin.jsp'>登出</a><br />

        請修改會員資料:<br />

        <form action="update.jsp" method="POST">

        您的姓名:<input type="text" name="name" value="<%=name%>" /> 

        您的密碼:<input type="password" name="pwd" value="<%=pwd%>" />

        您的電話:<input type="text" name="phone" value="<%=phone%>" />

        <input type="submit" name="b1" value="更新資料" />

        </form>
    <%
        }
        else{
        con.close();
        
    %>
        <h1><font color="red" href="signin.jsp">您尚未登入，請登入!</font></h1>
        <form action="check.jsp" method="POST">

        帳號: <input type="text" name="id" /><br />
        密碼: <input type="password" name="pwd"/><br />

        <input type="submit" name="b1" value="登入" />

        </form>
    <%
    }
    %>
</html>

