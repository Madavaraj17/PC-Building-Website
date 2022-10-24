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
 
<center> <h1>USER INFO</h1>  </center>    

           
     
   <table style="border:1px solid black;margin-left:auto;margin-right:auto; width:100%;">

<tr bgcolor="#4B0082">
<td><b style="color:white">USER ID</b></td>
<td><b style="color:white">FIRST NAME</b></td>
<td><b style="color:white">LAST NAME</b></td>
<td><b style="color:white">EMAIL</b></td>
<td><b style="color:white">ADDRESS</b></td>
<td colspan=6><b style="color:white">DOB</b></td>
<td colspan=6><b style="color:white">PHONE NO</b></td>
<td></td>

</tr>
       
        <%
String connectionURL = "jdbc:mysql://localhost:3306/test1";
Connection con = null;
Statement st = null;
ResultSet rs = null;

try {

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL,"root","root");
    st = con.createStatement();
    String sql = "select * from custcre;";
    rs = st.executeQuery(sql);
    while (rs.next()) {
        String a,b,c,d,e,f,g,h;
        g = rs.getString("id").trim();
       
        a = rs.getString("fname").trim();
        b = rs.getString("lname").trim();
        c = rs.getString("email").trim();
        d = rs.getString("addr").trim();
        e = rs.getString("dob").trim();
        f = rs.getString("phoneno").trim();
        
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

  

 <tr>  
    <td><%=g%></td>
    <td><%=a%></td>
    <td><%=b%></td>
    <td><%=c%></td>
    <td><%=d%></td>
    <td colspan=6><%=e%></td>
    <td colspan=6><%=f%></td>
    <td><a href="deluser.jsp?name=<%=g%>"><input type="button" value="Delete"/></a></td>
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
           </table>
         </body>
  

</html>

      
   
