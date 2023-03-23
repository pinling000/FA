<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員</title>
    <link rel="stylesheet" href="assets/CSS/record.css">
</head>
<body>
    <header class="logo">
        <a href="index.html"><img src="assets/image/logo.jpg" width="90px"></a>
        <div class="search">
            <form>
                <input type="text" placeholder="搜尋" name="search">
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
    <%
        Class.forName("com.mysql.jdbc.Driver");
	    String url="jdbc:mysql://localhost/";
		Connection con=DriverManager.getConnection(url,"root","1234");
		String sql="USE fashion";
		con.createStatement().execute(sql);	
		sql="select * from orders";
		ResultSet rs =con.createStatement().executeQuery(sql);	
    %>
    

    <main>
        <div class="menu">
            <h3>會員專區</h3>
            <hr style="border:none; border-top: 1.5px solid #878C8F;">
            <a href="member.jsp"><b>會員資料</b></a>
            <hr style="border:none; border-top: 1px solid #878C8F;">
            <a href="record.jsp"><b>購買紀錄</b></a>
        </div>
        
        <table>
            <tr style="text-align:left;">
                <th>訂單編號</th>
                <th>價格</th>
                <th>數量</th>
                <th>訂購人姓名</th>
                <th>地址</th>
                <th>配送方式</th>
                <th>付款方式</th>
            </tr>
       
            <%
            Integer	total;
            while(rs.next()){
            %>
            <tr>
                <td class="product">
                    <div class="product-pic">
                        <p><%=rs.getString("oid")%></p>

                    </div>
                </td>
                <td>
                    <div class="item-price">
                        <p>$<%=rs.getString("price")%></p>
                    </div>
                </td>
                <td>
                    <div class="item-num">
                        <p><%=rs.getString("num")%></p>
                    </div>
                </td>
                <td>
                    <div class="i-p-sum">
                        <p><%=rs.getString("receiver_name")%></p>
                    </div>
                </td>
                <td>
                    <div class="i-p-sum">
                        <p><%=rs.getString("receiver_address")%></p>
                    </div>
                </td>
                <td>
                    <div class="i-p-sum">
                        <p><%=rs.getString("deliver")%></p>
                    </div>
                </td>
                <td>
                    <div class="i-p-sum">
                        <p><%=rs.getString("pay")%></p>
                    </div>
                </td>
            </tr>
            <%}%>
        </table>
    </main>

    <footer>
    </footer>
    
</body>
</html>