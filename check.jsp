<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
	<%@include file="config.jsp" %>
    <%
    
    if (request.getParameter("mail") !=null && request.getParameter("pwd") !=null){
       
       session.setAttribute("mail",request.getParameter("mail"));
   
       sql = "SELECT * FROM `members` WHERE `mail`='" +request.getParameter("mail") + "'  AND `pwd`='" + request.getParameter("pwd") + "'"  ; 
       
       ResultSet rs =con.createStatement().executeQuery(sql);
   
     if(rs.next())
       { 
           String mail=request.getParameter("mail");
           session.setAttribute("mail",mail);
           if (mail.equals("admin"))
           {
           con.close();//結束資料庫連結
           out.print("<script>alert('管理員登入成功');window.location='admin.jsp'</script>") ;
           //response.sendRedirect("login.jsp") ;	
           }
           else
           {
           con.close();//結束資料庫連結
           out.print("<script>alert('會員登入成功,請先修改會員資料');window.location='member.jsp'</script>") ;	
           }
       }
     else{
           con.close();//結束資料庫連結
           out.print("<script>alert('帳號密碼錯誤請重新登入');window.location='signin.jsp'</script>") ;
       }
       
   }
   else
       response.sendRedirect("signin.jsp");
   %>

</html>
