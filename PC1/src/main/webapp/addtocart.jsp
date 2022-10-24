<%-- 
    Document   : swathi
    Created on : Feb 14, 2020, 2:53:20 PM
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
        <title>JSP Page</title>
    </head>
    <style type="text/css">
        .rows {
            float: left;
            width: 19%;
            padding: 50px 35px;
        }
        .card {
            
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 400px;
            height:320px;
            margin: auto;
            text-align: center;
            ont-family: arial;
            
        }
        label {
            display: block;
            font: 1rem 'Fira Sans', sans-serif;
        }
        
        input,
        label {
            margin: .4rem 0;
        }
    </style>
    
    
    
    
    <body>
        
        <%
        //String connectionURL = "jdbc:mysql://localhost:3306/test1";
        //Connection con = null;
       // Statement st = null;
        Statement st1 = null;
        ResultSet rs = null;
        ResultSet rs1 = null;
        
            //Statement st1 = null;
            
            //ResultSet rs1 = null;
            //String fruites = "fruites";
            %><%-- <script>document.bigForm.hugeString.value=request.getParameter("image");</script>--%><%
            String id =(String)request.getParameter("id");
            //int id1=Integer.valueOf(id);
            String image =(String)request.getParameter("image");
            String pname = request.getParameter("pname");
            String ptype = request.getParameter("ptype");
            String brand = request.getParameter("brand");
            String price =(String) request.getParameter("price");
            //String pprice = request.getParameter("price1");
            //int price2=Integer.valueOf(price1);
            
            String qty = request.getParameter("qty");
            String username = request.getParameter("uname");   
            String password = request.getParameter("pass");
           
            //out.println(request.getParameter("id"));
            //out.println(request.getParameter("image"));
            //out.println(request.getParameter("pname"));
            //out.println(request.getParameter("ptype"));
            //out.println(request.getParameter("brand"));
            //out.println(request.getParameter("qty1"));
            //out.println(request.getParameter("price"));
            
           try {
        	   String connectionURL="jdbc:mysql://localhost:3306/test1";
        	    Connection connection=null;
        		 Class.forName("com.mysql.jdbc.Driver");
        	     connection=DriverManager.getConnection(connectionURL,"root","root");
        	     Statement st=connection.createStatement();
        	     //ResultSet rs,rs1;   
            //String sq,sq1;
           String sq1="select * from cartshow where pname="+"'"+pname+"' ";
           rs=st.executeQuery(sq1);
           String sql1="select id from custcre where uname="+username+"and pass="+password;
           //rs1=st.executeQuery(sql1);
           
           //out.println("loaded");
           int found=0;
           while(rs.next())
           {
        	   found++;
           
           }
           if(found==1)
           {
        	   
        	   response.sendRedirect("error.jsp");
           }
           else{
        	 
        	   String sq3="delete from cart1";
        	   
           
            String sq = "insert into cart1(Photo,pname,ptype,brand,price,qty) values('" + image + "','" + pname + "','" + ptype + "','" + brand + "','" + price + "','" + qty + "')";
            

                //Statement st1=connection.createStatement();
                //st = con.createStatement();
                int j=st.executeUpdate(sq3);
            int i=st.executeUpdate(sq);
            //out.println(request.getParameter("price"));
             
             response.sendRedirect("cart.jsp");
             //int i=st.executeUpdate(sq);            
                  // response.sendRedirect("fruits.jsp");
                //st1 = con.createStatement();
               //String sql = "select * from cart1";
                //rs = st1.executeQuery(sql);
                
               

                    //a
                    //b=.trim();
                    //c=.trim();

                
           }
                 } catch (Exception e) {
                e.printStackTrace();
            }
        %>  
    </body>
</html>

  