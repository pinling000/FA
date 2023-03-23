<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>

        <link rel="stylesheet" href="assets/CSS/member.css">

<html>
    <header class="logo">
        <img src="assets/image/logo.jpg" width="90px">
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
        <div class="menu">
            <h3>會員專區</h3>
            <hr style="border:none; border-top: 1.5px solid #878C8F;">
            <a href="member.jsp"><b>會員資料</b></a>
            <hr style="border:none; border-top: 1px solid #878C8F;">
            <a href="record.jsp"><b>購買紀錄</b></a>
        </div>
<%
    if (session.getAttribute("mail")!=null) {
        if(request.getParameter("name")!= null){
            String mail1=String.valueOf(session.getAttribute("mail"));
            String name=request.getParameter("name");
            String pwd=request.getParameter("pwd");
            String phone=request.getParameter("phone");
            try{
            sql="UPDATE members set name='"+request.getParameter("name")+"' where `mail` ='"+mail1+"'";
            con.createStatement().execute(sql);

            sql="update members set pwd='"+request.getParameter("pwd")+"' where `mail` ='"+mail1+"'";
            con.createStatement().execute(sql);

            sql="update members set phone='"+request.getParameter("phone")+"' where `mail` ='"+mail1+"'";
            con.createStatement().execute(sql);
            con.close();
            out.print("更新成功! 請<a href='member.jsp'>按此</a>回會員頁面!");
            }
catch(Exception e){
    out.println(e);
    out.println(sql);

}
        }
        else{
            con.close();
            out.print("更新失敗! 請填寫完整，<a href='member.jsp'>按此</a>回會員頁面!");
        }
    }
    else{
            con.close();
%>
    <h1><font color="red">您尚未登入，請登入!</font></h1>
    <form action="check.jsp" method="POST">

    帳號: <input type="text" name="id" /><br />
    密碼: <input type="password" name="pwd"/><br />

    <input type="submit" name="b1" value="登入" />

    </form>
<%
}
%>
</html>
