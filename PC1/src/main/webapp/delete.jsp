<%-- 
    Document   : delete
    Created on : Feb 25, 2020, 4:14:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE PC Building Website</title>
    </head>
    <body>
  <%
 //String grocery = "grocery";
  String connectionURL = "jdbc:mysql://localhost:3306/test1";
  Connection con = null;
  Statement st = null;
  ResultSet rs = null;

String firstname = request.getParameter("name");
int value=Integer.valueOf(firstname);

//out.println(firstname);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1", "root", "root");
 st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM addpro WHERE id="+value);
out.println("Data Deleted Successfully!");
response.sendRedirect("delpro.jsp");
} catch (Exception e) {
	out.println(e);
    //response.sendRedirect("delpro.jsp");
e.printStackTrace();
}
%>  
</body>
</html>
