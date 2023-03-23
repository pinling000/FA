<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="config.jsp" %>
<html>
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
        <li><a href="inventory.jsp">商品管理</a></li>
        <li><a href="order.jsp">訂單管理</a></li>
        <li><a href="logout.jsp">登出</a></li>
    </nav>
    <form method="post" action="ordercheck.jsp">
        <main>      
            <div class="item-inf"><h1>訂單</h1></div>
            
    <%
        if(con.isClosed())
                out.println("連線建立失敗");
        else{	
            sql = "SELECT * FROM `orders`" ;
            ResultSet o =  con.createStatement().executeQuery(sql);
            while(o.next()){
                int total_order=o.getRow();

    %>
            <div class="order">
                <article>
                <div class="item1">
                    <label for="item_name">訂單編號</label>
                    <label class="text1"  name="item_name" ><%=o.getString(1)%></label>
                </div>     
                <div class="item1">    
                    <label for="item_type">商品名稱</label>
                    <label class="text1"  name="item_name" ><%=o.getString(2)%></label>
                </div>         
                <div class="item1">
                    <label for="item_price">商品價格 </label>
                    <label class="text1"  name="item_name" ><%=o.getString(3)%></label>
                </div>
                <div class="item1">
                    <label for="item_price">商品數量 </label>
                    <label class="text1"  name="item_name" ><%=o.getString(4)%></label>
                </div>
                <div class="item1">
                    <label for="item_price">配送方式 </label>
                    <label class="text1"  name="item_name" ><%=o.getString(10)%></label>
                </div>

                </article>
                <aside>
                    <div class="item2">
                        <label for="inventory_quantity">訂購人姓名</label>
                        <label class="text1"  name="item_name" ><%=o.getString(5)%></label>
                    </div>
                    <div class="item2">
                        <label for="item_introduce">訂購人電話 </label>
                        <label class="text1"  name="item_name" ><%=o.getString(6)%></label>
                    </div>
                    <div class="item2">
                        <label for="item_price">訂購人信箱 </label>
                        <label class="text1"  name="item_name" ><%=o.getString(7)%></label>
                    </div>
                    <div class="item2">
                        <label for="item_price">訂購人地址 </label>
                        <label class="text1"  name="item_name" ><%=o.getString(8)%></label>
                    </div>
                    <div class="item2">
                        <label for="item_price">&nbsp;&nbsp;付款方式&nbsp;&nbsp;</label>
                        <label class="text1"  name="item_name" ><%=o.getString(11)%></label>
                    </div>
                        
                </aside> 
            </div>
    <%          
                
            }
            con.close();
        }
    %>
           