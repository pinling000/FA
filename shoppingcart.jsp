<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String mail = (String)session.getAttribute("mail");
if(mail == null) {
    out.print("<script>alert('請先登入會員');window.location='signin.jsp'</script>");
}%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <link rel="stylesheet" href="assets/CSS/shoppingcartnew.css">
    <link rel="stylesheet" href="assets/CSS/checkout.css">
    <script src="assets/JS/number.js" defer></script>
</head>
<body>
    <header class="logo">
        <a href="index.html"><img src="assets/image/logo.jpg" width="90px"></a>
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

    <%
        Class.forName("com.mysql.jdbc.Driver");
	    String url="jdbc:mysql://localhost/";
		Connection con=DriverManager.getConnection(url,"root","1234");
		String sql="USE fashion";
		con.createStatement().execute(sql);	
		sql="select * from car";
		ResultSet rs =con.createStatement().executeQuery(sql);	
	%>	
    <main>
        <section>
            <div class="s-header">
                <hr style="border:none; border-top: 1px solid #878C8F;">
                <h4>購物車</h4>
                <hr style="border:none; border-top: 1px solid #878C8F;">
            </div>

            <div class="cart">
                <table>
                    <tr style="text-align:left;">
                        <th style="padding-left: 160px;">商品資料</th>
                        <th>價格</th>
                        <th>數量</th>
                        <th>小計</th>
                        <th></th>
                    </tr>
                    
                    
                        
                    <%
                    Integer	total;
                    while(rs.next()){
                    %>
                    <tr>
                        
                        <td style="padding-left: 160px;">
                            <div class="item-name">
                                
                                <p><%=rs.getString("name")%></p>
                                <input type="hidden" name="name" value="<%=rs.getString("name")%>">
                            </div>                       
                        </td>
                        <td>
                            <div class="item-price">
                                <p>$<%=rs.getString("price")%></p>
                                <input type="hidden"  value="<%=rs.getString("price")%>">
                            </div>
                        </td>
                        <td>
                            <div class="item-num">
                                <p><%=rs.getString("num")%></p>
                                <input type="hidden" value="<%=rs.getString("num")%>">
                            </div>
                        </td>
                        <td>
                            <div class="i-p-sum">
                                <%
                                String strprice=rs.getString("price");
                                int price=Integer.valueOf(strprice);
                                String strnum=rs.getString("num");
                                int num=Integer.valueOf(strnum);
                                int inttotal=price*num;
                                String Total = Integer.toString(inttotal);
                                out.print("<span class='price-label'>NT$"+Total+"</span>");
                                out.print("<input type='hidden' name='price' value='"+Total+"'>");
                                %>
                            </div>
                        </td>
                        <td>
                            <div class="delete">
                                <input type="image" src="assets/image/cashbin/1654558344003.jpeg" width="25px" border="0">
                            </div>
                        </td>
                    </tr>
                    <%}%> 
                </table>
                
                <form action="addorder2.jsp" method="post">
                    <hr style="border:none; border-top: 1px solid #878C8F;">
                    <h4>訂購人資訊</h4>
                    <hr style="border:none; border-top: 1px solid #878C8F;">
                </div>

                <article>
                    <section class="card">
                        <div class="row">
                            <div class="s-header">
                                <hr style="border:none; border-top: 1px solid #878C8F;">
                                <h4>顧客資訊</h4>
                                <hr style="border:none; border-top: 1px solid #878C8F;">
                            </div>
                            <div class="customer-inf">
                                姓名： <br/>
                                <input type="text" name="receiver_name" autofocus/><br/>
                                連絡電話：<br/>
                                <input type="text" name="receiver_tel"/><br/>
                                電子信箱：<br/>
                                <input type="text" name="receiver_mail"/><br/>
                            </div>
                        </div>
                    </section>
                </article>
                <aside class="card">
                    <div class="s-header">
                        <div class="row">
                        <hr style="border:none; border-top: 1px solid #878C8F;">
                        <h4>送貨地址</h4>
                        <hr style="border:none; border-top: 1px solid #878C8F;">
                    </div>
                    <div>
                        <label for="deliver-address">收貨地址</label>
                        <select name="address_option" id="deliver-address-1" class="deliver-form" >
                            <option value="台北市">台北市</option>
                            <option value="新北市">新北市</option>
                            <option value="基隆市">基隆市</option>
                            <option value="桃園市">桃園市</option>
                            <option value="新竹市">新竹市</option>
                            <option value="新竹縣">新竹縣</option>
                            <option value="苗栗縣">苗栗縣</option>
                            <option value="台中市">台中市</option>
                            <option value="彰化縣">彰化縣</option>
                            <option value="南投縣">南投縣</option>
                            <option value="雲林縣">雲林縣</option>
                            <option value="嘉義縣">嘉義縣</option>
                            <option value="嘉義市">嘉義市</option>
                            <option value="台南市">台南市</option>
                            <option value="高雄市">高雄市</option>
                            <option value="屏東縣">屏東縣</option>
                            <option value="宜蘭縣">宜蘭縣</option>
                            <option value="花蓮縣">花蓮縣</option>
                            <option value="台東縣">台東縣</option>
                            <option value="金門縣">金門縣</option>
                            <option value="連江縣">連江縣</option>
                            <option value="澎湖縣">澎湖縣</option>
                        </select>
                    </div>
                    <div class="customer-inf">
                        <input type="text" name="address_text" size="60" value=""/>
                    </div>
                </div>
                </aside>
                <article>
                <section class="card">
                    <div class="row">
                    <div class="s-header">
                        <hr style="border:none; border-top: 1px solid #878C8F;">
                        <h4>送貨及付款方式</h4>
                        <hr style="border:none; border-top: 1px solid #878C8F;">
                    </div>
                    <div class="#">
                        <label for="order-deliver">送貨地點</label>
                        <select name="location" id="order-deliver" class="deliver-form" >
                            <option value="台灣本島">台灣本島</option>
                            <option value="離島">離島</option>
                         </select>
                         <label for="o-d-method">送貨方式</label>
                         <select name="deliver" id="o-d-method" class="deliver-form">
                             <option  value="11取貨付款">7-11取貨付款</option>
                             <option  value="全家取貨付款">全家取貨付款</option>
                             <option  value="宅配貨到付款">宅配貨到付款</option>
                             <option  value="宅配到府">宅配到府</option>
                         </select>
                         <label for="order-payment">付款方式</label>
                         <select name="pay" id="order-payment" class="deliver-form">
                             <option value="貨到付款">貨到付款</option>
                             <option value="信用卡付款">信用卡付款</option>
                             <option value="ATM轉帳付款">ATM轉帳付款</option>
                             <option value="7-11ibon付款">7-11ibon付款</option>
                             <option value="全家FamiPort">全家FamiPort</option>
                             <option value="LINEPAY">LINE PAY</option>
                         </select>
                    </div>
                </div>
            </section>
            </article>

            <aside class="card">
                <div class="s-header">
                    <div class="row">
                    <hr style="border:none; border-top: 1px solid #878C8F;">
                    <h4>訂單金額確認</h4>
                    <hr style="border:none; border-top: 1px solid #878C8F;">
                </div>
                <div class="price">
                    <label for="price-sum" calss="num-left">件數:</label>
                    <!--<label for="price-sum" calss="num-right">1件</label><br/>-->
                    <%
                    ResultSet rs2=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
                    rs2.last();
                    int total2=rs2.getRow();
                    out.println("<label for='price-sum' calss='num-right'>"+total2+"件</label><br/>");
                    out.print("<input type='hidden' name='num' value='"+total2+"'>");
                    %>
                    <label for="price-sum" calss="price-left">合計:</label>
                    <label for="price-sum" calss="price-right"><%
                        int sum=total2*200;
                        out.println("<label for='price-sum' calss='num-right'>$"+sum+"</label><br/>");
                        %>
                    </label> 
                    <input type="hidden" name="price" value="Total">          
                </div>
            </div>
            </aside>   
            <aside class="card">
                <div class="s-header">
                    <div class="row">
                    <hr style="border:none; border-top: 1px solid #878C8F;">
                    <h4>訂單備註</h4>
                    <hr style="border:none; border-top: 1px solid #878C8F;">
                </div>
                <div class="memo">
                    <textarea name="memo" cols="50" rows="5" wrap="hard"></textarea>       
                </div>
            </div>
            </aside>   
            </div>
        </section>
    </main>
    
    <div class="btn-checkout">
        <input class="button" type="submit" value="訂單結帳">
    </div>
     
    </form>
    <footer>
        Copyrgiht @ 2022 All rights reserved
    </footer>
</body>
</html>