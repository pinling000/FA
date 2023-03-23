<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>關於我們</title>
        <link rel="stylesheet" href="assets/CSS/us.css">
    </head>
    <body>
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
    
        <main>
            <section>
                <h4>前端</h4>
                <table>
                <tr>
                    <td colspan="2">個人資訊</td>
                    <td>分工</td>
                </tr>
                <tr>
                    <td><img src="assets/image/us/04.png" width="100%"></td>
                    <td>財金四乙 趙翊吟</td>
                    <td>
                        
                            購物車<br/>
                            關於我們<br/>
                            LOGO<br/>
                            商品後臺頁面<br/>
                        
                    </td>
                </tr>
                <tr>
                    <td><img src="assets/image/us/03.png" width="100%"></td>
                    <td>財金四乙 楊雅惠</td>
                    <td>
                    
                            首頁<br/>
                            商品頁<br/>
                            星等評分<br/>
                            會員登入/註冊<br/>
                            會員資料頁面<br/>
                        
                    </td>
                </tr>
               </table>
              
            <br/>
            <h4>後端</h4>
             <table>
                   <tr>
                       <td colspan="2">個人資訊</td>
                       <td>心得</td>
                   </tr>
                   <tr>
                       <td><img src="assets/image/us/01.png" width="100%"></td>
                       <td>資管二甲 施品羚</td>
                       <td>
                           <p>這學期學習後端的課程，相比上學期前端的部分比較吃力，但也可以做出很多前端做不到的事情，不過需要考慮的東西也變多了，連接資料庫也不是想像中那麼簡單的。
                        做專案的時候統整了上課用到的東西，雖然在做的時候困難重重，但最後做出來的時候還是很有成就感的。
                        我覺得上學期乙班的同學太厲害了，在還沒學資料庫的時候就先學後端了，真心佩服他們。</p>
                    </td>
                   </tr>
                   <tr>
                    <td><img src="assets/image/us/02.png" width="100%"></td>
                    <td>資管二甲 柳翔哲</td>
                    <td>
                        <p>網程期末專案讓我們對網程後端課程內容更加熟悉,也讓我們能實戰演練jsp與sql的應用,更對程式邏輯思維與網頁應用融會貫通。
                        其中我認為最重要的是與組員們的團隊合作,做網頁時雖然會遇到層層阻礙,但透過與組員們的溝通與討論後,就能撥雲霧見青天,順利完成期末專案的設計。</p>
                    </td>
                </tr>
            </table>
    
            </section>
    
        </main>
    
        <footer>
        </footer>
        
    </body>
    </html>