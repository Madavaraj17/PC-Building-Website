<!DOCTYPE html>
<html lang="en">
  <head>
    <title>ONLINE PC Building Website</title>
    <link rel="stylesheet" href="style.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
      
    <div class="signup-box">
      <h1>Sign Up</h1>
      <h4>It's free and only takes a minute</h4>
      <form name="ucre" action="signup.jsp" >
        <label>First Name</label>
        <input type="text" name="fname" value="" required />
        <label>Last Name</label>
        <input type="text" name="lname" value="" required/>
        <label>Email</label>
        <input type="text" name="email" value="" required/>
        <lable id="add">Address</lable>
        <textarea name="address" id="textarea1" rows="1" cols="20" required>
        </textarea>
        
        <label>
            D O B
        </label>
        <input type="date" name="dob" value="" required />
        <label>Phone No</label>
        <input type="text" name="phoneno" value="" required />
        <label>User Name</label>
        <input type="text" name="cuname" value="" required/>
        <label>Password</label>
        <input type="password" placeholder="" name="cpass" required/>
        
        <input type=Submit value="Sign Up" />
        <input type="reset">
      </form>
     
    </div><h2>
    <p class="para-2">
      Already have an account? <a href="log1.jsp">Login here</a>
    </p></h2>
  </body>
</html>
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
sq1="insert into userlog(uname,passwd) values('"+username+"','"+passwords+"')";

    Statement st=connection.createStatement();
int i=st.executeUpdate(sq);
int j=st.executeUpdate(sq1);%>
if(i){
<script>alert("Data is successfully inserted!");</script>
}
else
{
<script>alert("Data is NOT inserted!");</script>
}<% 
out.println("Data is successfully inserted!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>





