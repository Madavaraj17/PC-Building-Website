<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ONLINE PC Building Website</title>
  <link rel="stylesheet" href="style3.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
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
<body>

  <div class="wrapper">
    <nav>
      <input type="checkbox" id="show-search">
      <input type="checkbox" id="show-menu">
      <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
      <div class="content">
      <div class="logo"><a href="#">ONLINE PC Building Website</a></div>
        <ul class="links">
          <li><a href="adminwin1.jsp">Home</a></li>
          <li><a href="addpro1.jsp">ADD PRODUCT</a></li>
         <li><a href="delpro1.jsp">DELETE PRODUCT</a></li>
         <li><a href="userinfo1.jsp">USER INFO</a></li>
         <li><a href="adorshow.jsp">ORDERS</a></li>
          <li><a href="log1.jsp">Logout</a></li>
        </ul>
      </div>
      
     
    </nav>
  </div>
   <div class="dummy-text">
    
    
  </div>
  
   </body>
  </html>
  
 <html>
    <head>
        <center>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
    </center>
        <title>WELCOME TO ONLINE PC BUILDING WEBSITE</title>
    </head>
    <body>
 
<center> <h1>ADD PRODUCT</h1>  </center>    
  
  
  <form method="post" action="addpro1.jsp">
<center>
<table border="1" width="30%" cellpadding="5">
<thead>
    <tr>
        <th colspan="2">ADD PRODUCTS HERE </th>
    </tr>
</thead>
<tbody>
    
    <tr>
        <td> Name</td>
        <td><input type="text" name="pname" value="" required /></td>
    </tr>
     <tr>
    
        <td>TYPE</td>
        <td><select name="type">
              <option>Accessories</option>
<option>Cabinate</option>
<option>FAN</option>
<option>GPU</option>
<option>Monitor</option>
<option>Mother Board</option>
<option>PSU</option>
<option>Processor</option>
<option>RAM</option>
<option>ROM</option>
    </tr>
     <tr>
    
        <td>Compatablity</td>
        <td><select name="comp">
                <option>Intel</option>
                <option>AMD</option>
                <option>BOTH</option>
                
        </select></td>
    <tr>
    
        <td>Brand</td>
        <td><select name="brand">
               <option>AMD</option>
<option>ASRock</option>
<option>Adata </option>

<option>Ant Esport</option>
<option>ANTEC</option>
<option>Arctic</option>
<option>Asus</option>
<option>CORSAIR</option>
<option>CoolerMaster</option>
<option>Crucial</option>
<option>Deepcool</option>
<option>Gigabyte</option>
<option>Kingston</option>
<option>Intel</option>
<option>Lian</option>
<option>Logitech</option>
<option>MSI</option>
<option>Nvidia</option>
<option>Razer</option>
<option>Samsung</option>
        </select></td>
    </tr>
    
    <tr>
        <td>price</td>
        <td><input type="text" name="price" value="" required /></td><br>
    </tr>
    
    <tr>
        <td>Image</td>
        <td><input type="file" name="img" value="" required /></td>
    </tr>
    <tr>
        <td>Quantity</td>
        <td><input type="text" name="qty" value="" required /></td><br>
    </tr>
    <td><input type="submit" value="Submit" /></td>
    <td><input type="reset" value="Reset" /></td>
    </tr>
    
</tbody>
</table>
</center>
</form>
</body>
</html>

<%@page import="java.sql.*,java.util.*"%>

<%

            String firstname = request.getParameter("pname");
            String prodtype = request.getParameter("type");
            String comp = request.getParameter("comp");
            String brand = request.getParameter("brand");
            String pprice = request.getParameter("price");
            String img = request.getParameter("img");
            String qty = request.getParameter("qty");

            try {
            	String connectionURL="jdbc:mysql://localhost:3306/test1";
                Connection connection=null;
            	 Class.forName("com.mysql.jdbc.Driver");
                 connection=DriverManager.getConnection(connectionURL,"root","root");  
                Statement st = connection.createStatement();
                String sq;
                sq = "insert into addpro(image,pname,ptype,comp,brand,price,qty) values('" + img + "','" + firstname + "','" + prodtype + "','" + comp + "','" + brand + "'," + pprice + "," + qty + ");";
                int i = st.executeUpdate(sq);


                //out.println("Data is successfully inserted!");
                %><script>alert("Data is successfully inserted!");</script><%
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
%>
 <%
 //out.println("<center><h2>RAM</h2></center>");
            //String image = request.getParameter("Photo");
            //String pname = request.getParameter("pname");
            //String sltype = request.getParameter("saletype");
            //String cate = request.getParameter("category");
            String pname = request.getParameter("pname");
           
            String connectionURL = "jdbc:mysql://localhost:3306/test1";
            Connection con = null;
            Statement st = null;
           // ResultSet rs = null;
            String processor = "ROM";
            try {

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionURL,"root","root");
                st = con.createStatement();
              
                String s2;
                s2="select * from addpro where pname='"+pname+"'";

                //Statement st = connection.createStatement();
                ResultSet rs = st.executeQuery(s2);
                //if(rs.next()){



                while (rs.next()) {
                   
                    String a, b, c, d,g,h,i;
                    a = rs.getString("image").trim();
                    b = rs.getString("pname").trim();
                    c = rs.getString("ptype").trim();
                    g=rs.getString("comp").trim();
                    d = rs.getString("brand").trim();
                    h = rs.getString("price").trim();
                    i = rs.getString("qty").trim();
                    
                  
                %>
      
                
 <%
                    rs.next();
                }
                
               

            } catch (Exception e) {
               // out.println(e);
                e.printStackTrace();
            }
                %>
  
</body>
</html>