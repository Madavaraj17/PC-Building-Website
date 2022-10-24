

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <link rel="stylesheet" href="style3.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <center>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
    </center>
        <title>ONLINE PC Building Website</title>
    </head>
    <body>
          
  <div class="wrapper">
    <nav>
      <input type="checkbox" id="show-search">
      <input type="checkbox" id="show-menu">
      <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
      <div class="content">
      <div class="logo"><a href="#">ONLINE PC Building Website</a></div>
        <ul class="links">
          <li><a href="navtest.jsp">Home</a></li>
          <li><a href="cpu1.jsp">CPU</a></li>
          <li>
            <a href="#" class="desktop-link">Mother Board</a>
            <input type="checkbox" id="show-features">
            <label for="show-features">Mother Board</label>
            <ul>
              <li><a href="amd.jsp">AMD</a></li>
              <li><a href="intel.jsp">Intel</a></li>
             
            </ul>
          </li>
          
          <li><a href="gpu1.jsp">GPU</a></li>
          <li><a href="ram1.jsp">RAM</a></li>
          <li><a href="rom1.jsp">ROM</a></li>
          <li><a href="cab1.jsp">Cabinate</a></li>
          <li><a href="psu11.jsp">PSU</a></li>
          <li><a href="acc.jsp">Accesseries</a></li>
          <li><a href="cartview.jsp">View Cart</a></li>
          <li><a href="ordershow1.jsp">Order</a></li>
          <li><a href="ordel.jsp">Logout</a></li>
        </ul>
      </div>
      
     
    </nav>
     
  </div>
   </body>
  </html>
  
  <html>
  <body>
<center> <h1>CART VIEW</h1>  </center>  
<a href="bill.jsp"><button style="float: right;" ><h3>CHECKOUT</h3></button></a> <br><br><br>



     <style type="text/css">
* {box-sizing: border-box}
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #4B0082;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
  width: 20%;
  text-align: center;
}

.navbar a:hover {
  background-color: #000;
}

.navbar a.active {
  background-color: #555;
}
.rows {
  float: left;
  width: 20%;
  padding: 100px 35px;
}
@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
    width: 200%;
    text-align: left;
  }
}
</style>
 <script type="text/javascript">
            function validate2()
            {
                alert("Data is searched successfully!!!");
            }            
        </script>
        
    </head>
     <style type="text/css">
        .rows {
            float: left;
            width: 20%;
            padding: 50px 40px;
        }
        .card {
            
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 400px;
            height:425px;
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
    
    
                                                                                                                                                  
       
       

                                                                                                                                                          
                                                                                                                                                          
        <%
 
Connection con = null;
//Statement st = null;
ResultSet rs= null;
 
try{  
    
	String connectionURL="jdbc:mysql://localhost:3306/test1";
    Connection connection=null;
	 Class.forName("com.mysql.jdbc.Driver");
     connection=DriverManager.getConnection(connectionURL,"root","root");  
    Statement st = connection.createStatement();
String sql ="select * from  cartshow";
rs = st.executeQuery(sql);
            
         while (rs.next()) {
                    String a,b,c,d,e,f;
                    a = rs.getString("Photo").trim();
                    b = rs.getString("pname").trim();
                    c = rs.getString("ptype").trim();
                    c = rs.getString("brand").trim();
                    d = rs.getString("price").trim();
                     e = rs.getString("qty").trim();
                      f = rs.getString("total").trim();
                 
                    
                  
                    
                    //a
                    //b=.trim();
                    //c=.trim();
%>
        
        <script type="text/javascript">
          <center> 
        </script>
         
     
           <div class="rows">
                <div class="card">
                    <tr bgcolor="#DEB887">
                    <form action="cartshow.jsp" method="post" name="myform">
<td><img src="PC/PC/<%=a%>" name="img" width="200" height="200" ></td><br>
<input type="hidden" name="txtimg" value="<%=a%>">
<td><h3><%=b%></h3></td><br>
<input type="hidden" name="txtname" value="<%=b%>">
<td><%=c%></td><br>
    <input type="hidden" name="txtsele" value="<%=c%>">
<td>RS.<%=d%></td><br>
<td>QTY:<%=e%></td><br>
<td>TOTAL:<br><%=f%></td><br>  
  </form>
                <!--Quantity:<td><select id="sel" name="qty" >
                

<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
</select></td><br>
    <td></td><br>-->
   
                        <%
                        String g=request.getParameter("qty");
                        %>
                   
                      
               </div>
                </div> 
            </center>
            <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
           
         %>  
<!--<pre>                             Quantity: <input type="text" name="txtq" id="txtq" value="">
                                  Total:<input type="text" name="total" id="total" value=""> 
                                     
                                  
            <!--<input type="button" name="txtn" value="add to cart" method="post"></a>-->
           
         </body>
  

</html>
<html>
    <body>
        <%
            String connectionURL1 = "jdbc:odbc:Grodsn";
            Connection con1 = null;
            Statement st1 = null;
            ResultSet rs1 = null;
            
            try {

            	String connectionURL="jdbc:mysql://localhost:3306/test1";
                Connection connection=null;
            	 Class.forName("com.mysql.jdbc.Driver");
                 connection=DriverManager.getConnection(connectionURL,"root","root");  
                Statement st = connection.createStatement();
               String sql1 = "select sum(total) from cartshow";
                rs1 = st1.executeQuery(sql1);
                 String a="";
                 while (rs1.next()) {
                    a=rs1.getString(1);
                %>
 <% 
                                                                                                                                                            String firstname = request.getParameter("sub");
                                                                                                                                                          %>
                                                                                                                                                     TOTAL:<input type="text" name="sub" value="<%=a%>">   
                                                                                                                                                             <%
       
}
            } catch (Exception e) {
                e.printStackTrace();
            }
            %> 
      </body></html> 
   
