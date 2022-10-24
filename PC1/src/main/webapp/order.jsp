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
        <ul class="links"> <%String username = request.getParameter("uname");   
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
<center> <h1>THANK YOU</h1><br><br><h1>YOUR ORDER HAS BEEN RECEIVED SUCCESSFULLY </h1><br><h1>YOUR ORDER WILL BE DEVIVERED AS SOON AS POSSIBLE</h1>  </center> <br><br> <br>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>






<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script><% 


%>
</body>
</html> 
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
               // if(rs.next()){
                	
                
                	
                



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
                     
                    
                  
                %>
                
                
 <%
                    rs.next();
                }
               
               // }
               // else{
                    //response.sendRedirect("err1.jsp");
                    //}
            
          

            } catch (Exception e) {
               // out.println(e);
                e.printStackTrace();
            }
                %>
  
</body>
</html>
<%@page import="java.sql.*,java.util.*"%>

<%

            

            try {
            	
                Connection connection=null;
            	 Class.forName("com.mysql.jdbc.Driver");
                 connection=DriverManager.getConnection(connectionURL,"root","root");  
               
                String sq,sq1,sq2,sq3;
                sq1="delete from cartshow ;";
                
                sq = "insert into order1(Photo,pname,ptype,brand,price,qty,total) select Photo,pname,ptype,brand,price,qty,total from cartshow;";
                sq3 = "insert into order2(Photo,pname,ptype,brand,price,qty,total) select Photo,pname,ptype,brand,price,qty,total from cartshow;";
                int i = st.executeUpdate(sq);
                //int c = st.executeUpdate(sq2);
                int k = st.executeUpdate(sq3);
                int j = st.executeUpdate(sq1);
                
                //out.println("Data is successfully inserted!");
                
                %><%
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
%>