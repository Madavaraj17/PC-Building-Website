<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME TO ONLINE PC BUILDING WEBSITE</title>
        
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
 
<center> <h1>DELETE PRODUCT</h1>  </center>    

<%
String connectionURL = "jdbc:mysql://localhost:3306/test1";
Connection con = null;
Statement st = null;
ResultSet rs = null;

try {

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL,"root","root");
    st = con.createStatement();
    String sql = "select * from addpro ORDER BY pname;";
    rs = st.executeQuery(sql);
    while (rs.next()) {
        String a,b,c,d,e,f,g,h;
        h = rs.getString("comp").trim();
        g = rs.getString("id").trim();
        a = rs.getString("image").trim();
        b = rs.getString("pname").trim();
        c = rs.getString("ptype").trim();
        d = rs.getString("brand").trim();
        e = rs.getString("price").trim();
        f = rs.getString("qty").trim();
        
        //a
     //b=.trim();
     //c=.trim();
%>

      <div class="rows">
    <div class="card">
 <tr bgcolor="#DEB887">
 <td><input type="hidden" id="d" name="f" value="<%=g%>"/></td>
 <td><input type="hidden" id="h" name="h" value="<%=h%>"/></td>
<td><img src="PC/PC/<%=a%>" width="200" height="200" ></td><br>
<td><%=b%></td><br>
<td><%=c%></td><br>
<td><%=d%></td><br>
<td>Rs.<%=e%></td><br>

<a href="delete1.jsp?name=<%=g%>"><input type="button" value="delete"/></a>
</tr>

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


