<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	try {
		String url="jdbc:mysql://localhost/";
        String sql="";
		Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
            out.println("連線錯誤");
        else {
            sql="USE `fashion`";
            con.createStatement().execute(sql);
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String mail = request.getParameter("mail");
            String pwd = request.getParameter("pwd");

            /*sql="insert members (name,phone,mail,pwd) ";
            sql+="value ('" + name + "', ";
            sql+="'"+  pwd +"', ";
            sql+="'" + mail + "', ";
            sql+="'"+phone+"')"; */
            try{
                sql = "insert members(name , pwd , mail , phone) values('"+name+"','"+pwd+"','"+mail+"','"+phone+"')";
                    con.createStatement().execute(sql);
                    out.print("<script>alert('註冊成功，返回登入頁面');window.location='signin.jsp'</script>");
            }
                catch(SQLException sExec){	
                    out.print("<script>alert('註冊失敗，該已帳號存在或有其他問題，返回註冊');window.location='signup.jsp'</script>");
                }

            

            con.createStatement().execute(sql);
            con.close();				
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
