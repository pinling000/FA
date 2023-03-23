<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost/?serverTimezone=UTC";
            Connection con=DriverManager.getConnection(url,"root","1234");
            String sql="USE `fashion`";
            con.createStatement().execute(sql);
            request.setCharacterEncoding("utf-8");
            String mail = (String)session.getAttribute("mail");
            String price = request.getParameter("price");
            String num = request.getParameter("num");
            String receiver_name =request.getParameter("receiver_name");
            String receiver_tel = request.getParameter("receiver_tel");
            String receiver_mail = request.getParameter("receiver_mail");
            String address_text = request.getParameter("address_text");
            String address_option = request.getParameter("address_option");
            String receiver_address = address_option+address_text;
            String location = request.getParameter("location");
            String deliver = request.getParameter("deliver");
            String pay = request.getParameter("pay");
            try{
                sql = "insert orders(mail,price,num,receiver_name,receiver_tel,receiver_mail,receiver_address,pay,location,deliver) values('"+mail+"','"+price+"','"+num+"','"+receiver_name+"','"+receiver_tel+"','"+receiver_mail+"','"+receiver_address+"','"+pay+"','"+location+"','"+deliver+"')";
                con.createStatement().execute(sql);
                    out.print("<script>window.location='order_completed.jsp';</script>");
            }
            catch(SQLException sExec){  
                out.print("<script>alert('請再試試看');window.location='checkout.jsp'</script>");
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

