

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
<center> <h1>BILL VIEW</h1>  </center>   
     
    <table style="border:1px solid black;margin-left:auto;margin-right:auto;">

<tr  bgcolor="#4B0082">
<td><b style="color:white">NAME</b></td>
<td><b style="color:white">PRICE</b></td>
<td><b style="color:white">QTY</b></td>
<td><b style="color:white">TOTAL</b></td>
<td></td>
</tr>


        <%
        String connectionURL = "jdbc:mysql://localhost:3306/test1";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String processor = "Accessories";
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(connectionURL,"root","root");
            st = con.createStatement();
String sql ="select * from  cartshow ";
rs = st.executeQuery(sql);
            
         while (rs.next()) {
                    String a,b,c,d,e,f,h,g;
                    g = rs.getString("id").trim();
                   a = rs.getString("Photo").trim();
                   b = rs.getString("pname").trim();
                   c = rs.getString("ptype").trim();
                   h = rs.getString("brand").trim();
                   d = rs.getString("price").trim();
                    e = rs.getString("qty").trim();
                    f = rs.getString("total").trim();
                 
                    
                  
                    
                    //a
                    //b=.trim();
                    //c=.trim();
%>
        
       
          
        
     <!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 30%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.b{
    padding: 20px 0px 0px
}
</style>

</head>

 

 <tr align="center">  
    <td><%=b%></td>
    <td><%=d%></td>
    <td><%=e%></td>
    <td><%=f%></td>
    <td><a href="delitem.jsp?id=<%=g%>"><button>Delete</button></a></td>
</tr>
 



           
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
   
                   
               </div>
                </div> 
            
            <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
           
         %> 
 
<!--<pre>                             Quantity: <input type="text" name="txtq" id="txtq" value="">
                                  Total:<input type="text" name="total" id="total" value=""> 
                                     
                                  
            <!--<input type="button" name="txtn" value="add to cart" method="post"></a>-->
           </table>
         </body>
  

</html>
<html>
    <body>
        <%
        //String connectionURL = "jdbc:mysql://localhost:3306/test1";
        //Connection con = null;
        Statement st1 = null;
        ResultSet rs1 = null;
       // String processor = "Accessories";
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(connectionURL,"root","root");
            st1 = con.createStatement();
               String sql1 = "select sum(total) from cartshow";
                rs1 = st1.executeQuery(sql1);
                 String p="";
                 while (rs1.next()) {
                    p=rs1.getString(1);
                %>
 <% 
String firstname = request.getParameter("sub");
 %>    <center><b>TOTAL:</b><input  type="text" name="sub" value="<%=p%>" style="font-size: 18px;" readonly/><br><a href="order.jsp"><button >ORDER NOW</button></a><br><h3>PAYMENT METHOD :</h3><h4>Cash on delivery</h4> </center>
                                                                                                                                                          
                                                                                                                                                             <%
       
}
        } catch (Exception e) {
                e.printStackTrace();
            }
            
            %> 
      </body></html> 
   
