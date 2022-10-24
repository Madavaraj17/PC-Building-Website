<%-- 
    Document   : validate
    Created on : 28 Feb, 2015, 8:50:26 AM
    Author     : Lahaul Seth
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
    	Statement st = null;
        ResultSet rs = null;
        
        String username = request.getParameter("uname");   
        String password = request.getParameter("pass");
        String connectionURL="jdbc:mysql://localhost:3306/test1";
        Connection connection=null;
        //Class.forName("com.mysql.jdbc.Driver").newInstance();
        Class.forName("com.mysql.jdbc.Driver");
        connection=DriverManager.getConnection(connectionURL,"root","root");   
        //out.println("loaded");
        PreparedStatement pst = connection.prepareStatement("Select uname,pass,id from custcre where uname=? and pass=?;");
        pst.setString(1, username);
        pst.setString(2, password);
        st = connection.createStatement();
       
        ResultSet rs1 = pst.executeQuery();      
       
        
       
        
        if(rs1.next())  {         
          // out.println("Valid login credentials");  
           
            
           
        	
        	response.sendRedirect("navtest.jsp?uname="+username+"&pass="+password);
        }else{
           out.println("<h1>Invalid login credentials</h1>");  }
          %><a href="log1.jsp"><h2>Click Here</h2></a> <h1>To Try again</h2><%
   
        } catch(Exception e){       
       out.println("Something went wrong !! Please try again"+e);       
   }   
    
%>
</html>