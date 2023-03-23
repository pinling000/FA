<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	
		try {
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","910816");
				String sql="USE fashion";
				request.setCharacterEncoding("utf-8");
				con.createStatement().execute(sql);
				String introduce =request.getParameter("introduce");
				String name =request.getParameter("name");
				String type =request.getParameter("type");
				String price =request.getParameter("price");
				String quantity =request.getParameter("quantity");
				
				

				try{
				 sql = "UPDATE product SET introduce = '"+introduce+"',name = '"+name+"',type = '"+type+"',price = '"+price+"',quantity = '"+quantity+"'WHERE name ='朵朵可可'" ;
				
				con.createStatement().execute(sql);
					out.print("<script>alert('商品更新成功');window.location='admin.jsp'</script>");
				
				}
				catch(SQLException sExec){
					
					out.print("<script>alert('商品更新失敗');window.location='inventory.jsp'</script>");
				}
				
				
		}
		
		
		
		catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
%>