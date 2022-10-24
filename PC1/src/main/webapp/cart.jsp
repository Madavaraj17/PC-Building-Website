

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <center>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <style type="text/css">
        .rows {
            float: center;
            width: 19%;
            padding: 50px 35px;
        }
        .card {
            
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 400px;
            height:500px;
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
    </center>
        <title>ONLINE PC Building Website</title>
    </head>
    <body>
        
         <center> <h1>ADD TO CART</h1>
        <%
        String connectionURL = "jdbc:mysql://localhost:3306/test1";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
            String fruites = "fruites";
            try {

            	Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionURL,"root","root");
                st = con.createStatement();
                String sql = "select * from cart1  ";
                rs = st.executeQuery(sql);
                while (rs.next()) {
                    String a,b,c,d,e,f;
                    a = rs.getString("Photo").trim();
                    b = rs.getString("pname").trim();
                    c = rs.getString("ptype").trim();
                    d = rs.getString("brand").trim();
                    e = rs.getString("price").trim();
                    f = rs.getString("qty").trim();
                 
                    
                  
                    
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
<td><b><%=b%></b></td><br> 
<input type="hidden" name="txtname" value="<%=b%>">
<td><%=c%></td><br>
    <input type="hidden" name="txtptype" value="<%=c%>">
<td><%=d%></td><br>
  <input type="hidden" name="txtb" value="<%=d%>">
  <td>Rs.<%=e%></td><br>
  <input type="hidden" name="txtprice" id="txtp" value="<%=e%>">
  Quantity: <input type="text" name="txtq" id="txtq" value="" onkeyup="calc()"required><br>
                                  Total:<input type="text" name="total" id="total" value=""required><br> 
                                  <button>ADD TO CART</button><br>
                                  
  <!--<a href="cartshow.jsp?Photo=<%="txtimg"%>&name=<%=b%>&saletype=<%=c%>&price=<%=d%>"><input type="button" value="ADD TO CART"></a>-->
  </form>
  <a href="navtest.jsp"><button>Go back</button></a>
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
   <script>
     
       
function calc()
{
var elm = document.forms["myform"];
//alert("value");
//alert(myform.text2.value);
if (elm["txtq"].value != "" && elm["txtprice"].value != "")
    {
elm["total"].value=(parseInt(document.getElementById("txtq").value)*parseInt(document.getElementById("txtp").value));
}
}
//if (elm["text1"].value != "" && elm["text2"].value != "")
//{elm["text3"].value = parseInt(elm["text1"].value) * parseInt(elm["text2"].value);}
//}
</script>
<script> 
function on()
{
    var num=window.prompt("Enter the Quentity")
    var n=parseInt(num);
}
</script>
</html>
       
       
   
