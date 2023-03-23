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
        <li><a href="inventory.jsp">商品管理</a></li>
        <li><a href="order.jsp">訂單管理</a></li>
        <li><a href="logout.jsp">登出</a></li>
    </nav>

   
    <form method="post" action="addproduct.jsp">
        <main>      
            <div class="item-inf"><h1>商品後台</h1></div>
            <div class="item-inf"><h3>商品新增</h3></div>
            <article>
            <div class="item1">
                <label for="item_name">商品名稱</label>
                <input class="text1" type="text" name="item_name" placeholder="請輸入名稱" autofocus/><br/>
            </div>     
            <div class="item1">    
                <label for="item_type">商品種類</label>
                <input class="text1" type="text" name="item_type" placeholder="請輸入種類" /><br/>
            </div>         
            <div class="item1">
                <label for="item_price">商品價格 </label>
                    <input class="text1" type="text" name="item_price" placeholder="請輸入價格" />
            </div>

            </article>
            <aside>
                <div class="item2">
                    <label for="inventory_quantity">庫存數量 </label>
                    <input  class="text2" type="text" name="inventory_quantity" placeholder="請輸入數量" /><br/>
                </div>
                <div class="item2">
                    <label for="item_introduce">商品圖片 </label>
                    <input class="text2" type="text" name="item_introduce" placeholder="請輸入圖片名稱" /><br/>
                </div>
                    
            </aside> 
        </main>  

        <div class="btn-checked1">
                <input type="button" value="清空資料" onclick="javascript:history.go(0);" class="button" />
                <input type="submit" value="確認新增" class="button"/>
        </div>
    </form>
    <form method="post" action="reviseproduct.jsp">
        <main>      
            <div class="item-inf"><h3>商品修改</h3></div>
            <article>
            <div class="item1">
                <label for="item_name">商品名稱</label>
                <input class="text1" type="text" name="item_name" placeholder="請輸入名稱" autofocus/><br/>
            </div>     
            <div class="item1">    
                <label for="item_type">商品種類</label>
                <input class="text1" type="text" name="item_type" placeholder="請輸入種類" /><br/>
            </div>         
            <div class="item1">
                <label for="item_price">商品價格 </label>
                    <input class="text1" type="text" name="item_price" placeholder="請輸入價格" />
            </div>

            </article>
            <aside>
                <div class="item2">
                    <label for="inventory_quantity">庫存數量 </label>
                    <input  class="text2" type="text" name="inventory_quantity" placeholder="請輸入數量" /><br/>
                </div>
                <div class="item2">
                    <label for="item_introduce">商品圖片 </label>
                    <input class="text2" type="text" name="item_introduce" placeholder="請輸入圖片名稱" /><br/>
                </div>
                    
            </aside> 
        </main>  

        <div class="btn-checked1">
                <input type="button" value="清空資料" onclick="javascript:history.go(0);" class="button" />
                <input type="submit" value="確認修改" class="button"/>
        </div>
    </form>
    <form method="post" action="deleteproduct.jsp">
        <main>      
            <div class="item-inf"><h3>商品刪除</h3></div>

            <div class="item3">
                <label for="item_name">商品名稱</label>
                <input class="text1" type="text" name="item_name" placeholder="請輸入名稱" autofocus/><br/>
            </div>     

            
        </main>  

        <div class="btn-checked1">
                <input type="button" value="清空資料" onclick="javascript:history.go(0);" class="button" />
                <input type="submit" value="確認刪除" class="button"/>
        </div>
    </form>
    <footer>
        
    </footer>
</body>
</html>