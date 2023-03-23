<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
String mail = (String)session.getAttribute("mail");
if(mail == null) {
    out.print("<script>alert('請先登入會員');window.location='signin.jsp'</script>");
}else{
    try {
        Class.forName("com.mysql.jdbc.Driver");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");
                String sql="USE `fashion`";
                con.createStatement().execute(sql);

                request.setCharacterEncoding("utf-8");
                String name = request.getParameter("name");
                String price = request.getParameter("price");
                /*int price=Integer.valueOf(strprice);*/
                String num = request.getParameter("num");
                /*int num=Integer.valueOf(strnum);*/
                String img = request.getParameter("img");
                try{
                    sql = "insert car(name,price,num,img) values('"+name+"','"+price+"','"+num+"','"+img+"')";
                    con.createStatement().execute(sql);
                        out.print("<script>alert('加入購物車成功');window.location='sales.jsp';</script>");
                }
                catch(SQLException sExec){  
                    out.print("<script>alert('加入購物車失敗，請再試試看');window.location='sales.jsp'</script>");
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
}
%>