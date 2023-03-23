<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
		try {
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","910816");
				String sql="USE `fashion`";
				con.createStatement().execute(sql);
				String name = request.getParameter("name");
				String phone = request.getParameter("phone");
				String mail = request.getParameter("mail");
				String password = request.getParameter("password");
				try{
				sql = "insert members(name , phone , mail , password) values('"+name+"','"+phone+"','"+mail+"','"+password+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('註冊成功，返回登入頁面');window.location='signin.jsp'</script>");
				  }
				catch(SQLException sExec){	
					out.print("<script>alert('註冊失敗，該已帳號存在或有其他問題，返回註冊');window.location='signup.jsp'</script>");
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