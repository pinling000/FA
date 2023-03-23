<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="config.jsp" %>
<html>
    <%
        String mail1=String.valueOf(session.getAttribute("mail"));
        sql = "SELECT * FROM `members` WHERE `mail` ='"+mail1+"'";
        ResultSet rs=con.createStatement().executeQuery(sql);
        String name=""; 
        while(rs.next())
            {
                name=rs.getString("name");
            }
        
        request.setCharacterEncoding("UTF-8");    
        String new_star =request.getParameter("star");
        String new_comment =request.getParameter("comment");
        String new_product =request.getParameter("cid");
        java.sql.Date new_date= new java.sql.Date(System.currentTimeMillis());
        while(rs.next()){
            
        }
        if(new_comment==null ){
            out.println("<script language='javascript'>");       
                out.println("alert('請填寫關鍵字!!')");
                out.println("window.location.href='oneproduct.jsp'");
                out.println("</script>");
            
        }
        else{
            sql="insert board (`boardname`,`time`,`star`,`comment`,`productid`)";    
            sql+="values('"+name+"',";    
            sql+="'"+new_date+"',";    
            sql+="'"+new_star+"',";    
            sql+="'"+new_comment+"',";
            sql+="'"+new_product+"')";                
            con.createStatement().execute(sql);
            out.print("<script>alert('評論成功');</script>");
        }
        con.close();
        response.sendRedirect("sales.jsp");






    %>
</html>