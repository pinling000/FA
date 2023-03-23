<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>全部商品</title>
    <link rel="stylesheet" href="assets/CSS/product.css">
    <script src="assets/JS/product.js" defer></script>
    <script src="assets/JS/number.js" defer></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="jquery.star-rating-svg.js"></script>
    <script src="jquery.star-rating-svg.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <link rel="stylesheet" type="text/css" href="star-rating-svg.css">
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
            String productid=request.getParameter("pid");
            sql="select * from `product` where `product_ID` ='"+productid+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            out.print("<form method='post' action='addcheck.jsp'>");
            while(rs.next()){
                    out.print("<div class='container'>");
                        out.print("<div class='card'>");
                            out.print("<img src='"+rs.getString(7)+"' id='imgPreview' style='width:100%'>");
                            out.print("<input type='hidden'  name='img'  value='"+rs.getString(7)+"'>");
                        out.print("</div>");
                        out.print("<div class='detail'>");
                            out.print("<h1>");
                                out.print("<input type='text' name='name' readonly='readonly'  value='"+rs.getString(2)+"'>");
                            out.print("</h1>");
                            out.print("<h2>");
                            out.print("NT$"+"<input type='text' name='price' readonly='readonly'  value='"+rs.getString(4)+"'>");
                            out.print("</h2>");
                            out.print("<p>數量</p>");
                            out.print("<div>");
                                out.print("<input type='button' class='num-button1' value='-' id='btn1' onclick='MinusNUM()'>");
                                out.print("<input type='text' name='num' class='number' id='num' value='1'>");                    
                                out.print("<input type='button' class='num-button2' value='+'' id='btn2' onclick='addNUM()'>");
                                out.print("<p>庫存"+rs.getString(6)+"</p>");
                            out.print("</div>");
                            out.print("<input type='submit' class='btn' value='加入購物車'>");
                            out.println("</form>");
                        out.print("</div>");
                    out.print("</div>");                    
        %>
        <%
        
            if (session.getAttribute("mail") != null) {

        %>

        <div class="comment">
            <h2>評論區</h2>
            <hr style="border:none; border-top: 1px solid #878C8F;" >
            <div class="my-rating-6"></div>
            <form action="commit.jsp" method="post">
                <textarea cols="75" rows="5" wrap="hard" style=" width: 100%; height: 10%;"placeholder="寫下評論" name="comment"></textarea>
                <input type="hidden" id="test" name="star">
                <input type="hidden" name="cid" value="<%=rs.getString(1)%>">
                <input type="submit" value="確定送出">
                <input type="reset" value="取消"> 
            </form>


            <h2>商品評價</h2>
            <hr style="border:none; border-top: 1px solid #878C8F;" >
        <%
            
            sql=" select * from `board` where `productid`='"+rs.getString(1)+"'";
            ResultSet rsa= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
            rsa.last();
            int total_content=rsa.getRow();
            out.println("共"+total_content+"筆留言<p>");
            int page_num=(int)Math.ceil((double)total_content/5.0);
            out.println("請選擇頁數");
            for(int i=1;i<page_num;i++){
                out.print("<a href='view.jsp?page="+i+"</a>&nbsp;");
            }
            out.println("<p>");
            String page_string = request.getParameter("page");
            if(page_string==null){
                page_string="0";
            }
            int current_page=Integer.valueOf(page_string);
            if(current_page==0)
                current_page=1;
            int start_record=(current_page-1)*5;
            sql="select * from `board` where `productid`='"+rs.getString(1)+"' order by `boardid` desc limit  ";
            sql+=start_record+",5";
            rsa=con.createStatement().executeQuery(sql);
            while(rsa.next()){
                out.println("留言姓名:"+rsa.getString(2)+"<br>");
                out.println("留言商品:"+rs.getString(2)+"<br>");
                out.println("評等:"+rsa.getString(4)+"<br>");            
                out.println("留言:"+rsa.getString(5)+"<br>");
                out.println("留言時間:"+rsa.getString(3)+"<br>");  
                out.println("<hr style='border:none; border-top: 1px solid #878C8F;'>" );                  
            }
        
        %>
        </div>
        <%
            }
            else{
                
        %>

        <button class="box" style="margin: 150px;" type="submit" onclick="location.href='signin.jsp'">請登入會員</button> 
        <%
            }
            }
            con.close();  
        }
        %>
        </main>

    </body>
</html>
