<%-- 
    Document   : custinsert
    Created on : Feb 3, 2020, 1:45:46 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*"%>

<%

String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String dob=request.getParameter("dob");
String phoneno=request.getParameter("phoneno");
String cuname=request.getParameter("cuname");
String cpass=request.getParameter("cpass");
String username=request.getParameter("cuname");
String passwords=request.getParameter("cpass");

try
{
	String connectionURL="jdbc:mysql://localhost:3306/test1";
    Connection connection=null;
	 Class.forName("com.mysql.jdbc.Driver");
     connection=DriverManager.getConnection(connectionURL,"root","root");   
     
String sq,sq1;
sq="insert into custcre(fname,lname,email,addr,dob,phoneno,uname,pass)values('"+firstname+"','"+lastname+"','"+email+"','"+address+"','"+dob+"','"+phoneno+"','"+cuname+"','"+cpass+"')";
sq1="insert into student1 values('"+username+"','"+passwords+"')";

    Statement st=connection.createStatement();
int i=st.executeUpdate(sq);
int j=st.executeUpdate(sq1);
   
out.println("Data is successfully inserted!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<%-- <html>
<body>
  <h3>Registration Successfull<a href="http://localhost:14684/grocery/index.jsp"><h3>Login here</h3></a> </h3>
</body>
</html></html>--%>