<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
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
  width: 20%; /* Four links of equal widths */
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
          <%String username = request.getParameter("uname");   
          String password = request.getParameter("pass"); %>
          <li><a href="navtest.jsp">Home</a></li>
          <li><a href="cpu1.jsp?uname=<%=username%>&pass=<%=password%>">CPU</a></li>
          <li>
            <a href="#" class="desktop-link">Mother Board</a>
            <input type="checkbox" id="show-features">
            <label for="show-features">Mother Board</label>
            <ul>
              <li><a href="amd.jsp?uname=<%=username%>&pass=<%=password%>">AMD</a></li>
              <li><a href="intel.jsp?uname=<%=username%>&pass=<%=password%>">Intel</a></li>
             
            </ul>
          </li>
          
           
          
          <li><a href="gpu1.jsp?uname=<%=username%>&pass=<%=password%>">GPU</a></li>
          <li><a href="ram1.jsp?uname=<%=username%>&pass=<%=password%>">RAM</a></li>
          <li><a href="rom1.jsp?uname=<%=username%>&pass=<%=password%>">ROM</a></li>
          <li><a href="cab1.jsp?uname=<%=username%>&pass=<%=password%>">Cabinate</a></li>
          <li><a href="psu11.jsp?uname=<%=username%>&pass=<%=password%>">PSU</a></li>
          <li><a href="acc.jsp?uname=<%=username%>&pass=<%=password%>">Accesseries</a></li>
          <li><a href="cartview.jsp?uname=<%=username%>&pass=<%=password%>">View Cart</a></li>
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
<center> <h1>ROM</h1>  </center>     
   
        <%
            String connectionURL = "jdbc:mysql://localhost:3306/test1";
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            String processor = "ROM";
            try {

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionURL,"root","root");
                st = con.createStatement();
                String sql = "select * from addpro where ptype='"+processor+"'ORDER BY pname;";
                rs = st.executeQuery(sql);
                while (rs.next()) {
                    String a,b,c,d,e,f,g,h;
                    
                    a = rs.getString("image").trim();
                    b = rs.getString("pname").trim();
                    c = rs.getString("ptype").trim();
                    d = rs.getString("brand").trim();
                    e = rs.getString("price").trim();
                    f = rs.getString("qty").trim();
                    g = rs.getString("id").trim();
                    h = rs.getString("comp").trim();
                    
                    
                    //a
                    //b=.trim();
                    //c=.trim();
%>
        
        
        <form name="cart" action="">
            <div class="rows">
                <div class="card">
                    <tr bgcolor="#DEB887">
                    <td><img src="PC/PC/<%=a%>" name="img" width="200" height="200" ></td><br>
                    
                    <td><b><%=b%></b></td><br> 
                    <td><%=c%></td><br>
                    <td><%=d%></td><br>
                    <td>Rs.<%=e%></td>
                    <input type="hidden" id="price" name="price" value="<%=e%>"/>
                     
                    <br>
                        <input type="hidden" id="d" name="f" value="<%=f%>"/>
                    
                 
                  
                  
    
 
                    
                    
                    
                    
                    
                    
                    
</form>

    

                  
          
                        
             
                    
                    <a href="addtocart.jsp?id=<%=g%>&image=<%=a%>&pname=<%=b%>&ptype=<%=c%>&brand=<%=d%>&price=<%=e%>&qty=<%=f%>&uname=<%=username%>&pass=<%=password%>"><input type="button" value="add to cart"/></a>
                    
                </div>
            </div> 
            
            <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
            %>  
  
</body>
</html>