<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost/?serverTimezone=UTC";
            Connection con=DriverManager.getConnection(url,"root","910816");
            String sql="USE `fashion`";
            con.createStatement().execute(sql);
            request.setCharacterEncoding("utf-8");
            String name =request.getParameter("name");
            String price = request.getParameter("price");
            String num = request.getParameter("num");
            try{
                sql = "insert orders(name,price,num) values('"+name+"','"+price+"','"+num+"')";
                con.createStatement().execute(sql);
                    out.print("<script>window.location='checkout.jsp';</script>");
            }
            catch(SQLException sExec){  
                out.print("<script>alert('請再試試看');window.location='sales.jsp'</script>");
            }   
            /*con.createStatement().execute(sql);*/
        }
        
        catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
        }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
%>