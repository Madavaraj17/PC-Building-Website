<%-- 
    Document   : adlogaut
    Created on : Feb 3, 2020, 11:29:45 AM
    Author     : user
--%>
<%@page import="java.sql.*"%>
<%
       try
{


   Class.forName("com.mysql.jdbc.Driver");
    String connectionURL="jdbc:mysql://localhost:3306/test1";
     Connection connection=DriverManager.getConnection(connectionURL,"root","root");
      Statement stmt=connection.createStatement();
      ResultSet rs,rs1;
     
      String aname=request.getParameter("aname").trim();
      String apass=request.getParameter("apass").trim();
     
    rs=stmt.executeQuery("select * from adminlog where aname="+"'"+aname+"'"+" and passwd="+"'"+apass+"'");
      String s="",s1="";
      int found=0;
            //out.println(aname);
            //out.println(apass);
            while(rs.next())
            {
                out.println(found);    
                found++;
            }
            if(found==1)
            {
                response.sendRedirect("adminwin1.jsp");
            }
            else
            {
            	out.println("<h1>Invalid login credentials</h1>");
            }
            rs.close();
            stmt.close();
            connection.close();  
         }
         catch(Exception e)
         {
            out.println("Exception occured" +e);
         }
%>
<html>
<body>
    <a href="adminlog.jsp"><h2>Click Here</h2></a> <h1>To Try again</h2>
</body>
</html>