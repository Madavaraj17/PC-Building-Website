<%-- 
    Document   : login
    Created on : 12 Sep, 2022, 10:29:03 PM
    Author     : Madavaraj K
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>ONLINE PC Building Website</title>
    <link rel="stylesheet" href="style.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="login-box">
      <h1>Admin Login</h1>
      <form name="log" action="adlogaut.jsp" method="post">
        <label>User Name</label>
        <input type="text" placeholder="" name="aname" required />
        <label>Password</label>
        <input type="password" placeholder="" name="apass" required />
        <input type="Submit" value="Login" />
      </form>
    </div>
    <h3>
    <p class="para-3">
      User Login <a href="log1.jsp">Click Here</a>
    </p></h3>
  </body>
</html>
