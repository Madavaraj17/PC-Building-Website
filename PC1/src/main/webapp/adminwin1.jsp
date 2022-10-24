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
<style>
body {
  font-family: Helvetica, sans-serif;
  padding: 5%;

}

#slideshow {
  text-align: center;
  overflow: hidden;
  height: 1000px;
  width: 720px;
  margin: 0 auto;
}

.slide-wrapper {
  width: 2912px;
  -webkit-animation: slide 18s ease infinite;
}

.slide {
  float: left;
  height: 510px;
  width: 728px;
}

.slide:nth-child(1) {
  background: #D93B65;
}

.slide:nth-child(2) {
  background: #037E8C;
}

.slide:nth-child(3) {
  background: #36BF66;
}

.slide:nth-child(4) {
  background: #D9D055;
}

.slide-number {
  color: #000;
  text-align: center;
  font-size: 10em;
}

@-webkit-keyframes slide {
  20% {margin-left: 0px;}
  30% {margin-left: -728px;}
  50% {margin-left: -728px;}
  60% {margin-left: -1456px;}
  70% {margin-left: -1456px;}
  80% {margin-left: -2184px;}
  90% {margin-left: -2184px;}
}
</style>
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
      <label for="show-search" class="search-icon"><i class="fas fa-search"></i></label>
      <form action="navtest.jsp" class="search-box">
      
        <input type="text" placeholder="Type Something to Search..." name="pname" required>
        <button type="submit" class="go-icon"><i class="fas fa-long-arrow-alt-right"></i></button>
      </form>
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
 
<center> <h1>WELCOME TO ONLINE PC BUILDING WEBSITE</h1>  </center>    
  
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
                   
                    String a, b, c, d, qty,g,h,i;
                    a = rs.getString("image").trim();
                    b = rs.getString("pname").trim();
                    c = rs.getString("ptype").trim();
                    g=rs.getString("comp").trim();
                    d = rs.getString("brand").trim();
                    h = rs.getString("price").trim();
                    i = rs.getString("qty").trim();
                    
                  
                %>
                <br />
                <br />
                
                <div class="rows">
                <div class="card">
                
                    <tr bgcolor="#DEB887">
                        <td><img src="PC/PC/<%=a%>" name="img" width="150" height="150" ></td><br>
                        <td><%=b%></td><br>
                        <td><%=c%></td><br>
                        <td><input type="hidden" name="c" id="cat" value="<%=g%>" /></td><br>
                        <td><%=d%></td><br>
                      
                      <a href="search.jsp?category=<%=g%>"><input type="button" name="next" value="VIEW" /></a>
                    </tr>
                </div>
                </div>
                
 <%
                    rs.next();
                }
                
               

            } catch (Exception e) {
               // out.println(e);
                e.printStackTrace();
            }
                %>
                
<div id="slideshow">
  <div class="slide-wrapper">
    <div class="slide"><h1 class="slide-number"><img src="PC/PC/PC-BUILD-MWAVE.jpg" width=1000 height=500/></h1></div>
    <div class="slide"><h1 class="slide-number"><img src="PC/PC/6a094f911d0fddbfe2d061cf00ac8c6d.png" width=1000 height=500/></h1></div>
    <div class="slide"><h1 class="slide-number"><img src="PC/PC/5f21e-16433417948778-1920.webp" width=1000 height=500/></h1></div>
    <div class="slide"><h1 class="slide-number"><img src="PC/PC/Best-Gaming-Setups.jpg" width=1000 height=500/></h1></div>
   
  </div>
</div>


</body>
</html>