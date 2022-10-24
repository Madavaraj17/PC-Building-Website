<%-- 
    Document   : cartshow
    Created on : Mar 4, 2020, 10:05:23 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            //String connectionURL = "jdbc:odbc:Grodsn";
            Connection con = null;
            //Statement st = null;
            //Statement st1 = null;
            ResultSet rs = null;
            //ResultSet rs1 = null;
            //String fruites = "fruites";
            String firstname = request.getParameter("txtname");
            String txtptype = request.getParameter("txtptype");
            String pprice = request.getParameter("txtprice");
            String img = request.getParameter("txtimg");
            String brand = request.getParameter("txtb");
            String qty1 = request.getParameter("txtq");
            String tot = request.getParameter("total");
           
            //out.println(firstname+"<br>");
           // out.println(txtptype+"<br>");
           // out.println(pprice+"<br>");
           // out.println(img+"<br>");
           // out.println(brand+"<br>");
           // out.println(qty1+"<br>");
           // out.println(tot+"<br>");
        %>
        <%
           
            
        try {
        	String connectionURL="jdbc:mysql://localhost:3306/test1";
            Connection connection=null;
        	 Class.forName("com.mysql.jdbc.Driver");
             connection=DriverManager.getConnection(connectionURL,"root","root");  
            Statement st = connection.createStatement();
            
            String sq,sql,sq1;
            sq = "insert into cartshow (Photo,pname,ptype,brand,price,qty,total)values('" + img + "','" + firstname + "','" + txtptype + "','" + brand + "','" + pprice + "','" + qty1 + "',"+tot+")";
            //int i = st.executeUpdate(sq);

               // sql="delete from cart1";
               // sq1="select sum(total) from cartshow";
               // Statement st3=con.createStatement();
                
                
                int i = st.executeUpdate(sq);
                //out.println(pprice+"<br>");
            //st.executeBatch();
           //con.commit();
            //st.execute(sql);
            //st.execute(sq1);
            //response.sendRedirect("userwin.jsp");
            
                out.println("inserted");            
                  // response.sendRedirect("fruits.jsp");
                //st1 = con.createStatement();
               //String sql = "select * from cart1";
                //rs = st1.executeQuery(sql);
                response.sendRedirect("cartview.jsp");
                

                    //a
                    //b=.trim();
                    //c=.trim();
%> 
        
        
        <%
                

            } catch (Exception e) {
                e.printStackTrace();
            }
            
        %>  
    </body>
    </body>
</html>
