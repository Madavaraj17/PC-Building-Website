<%@page import="java.sql.*,java.util.*"%>

<%

            

            try {
            	String connectionURL="jdbc:mysql://localhost:3306/test1";
                Connection connection=null;
            	 Class.forName("com.mysql.jdbc.Driver");
                 connection=DriverManager.getConnection(connectionURL,"root","root");  
                Statement st = connection.createStatement();
                String sq,sq1,sq2,sq3;
                //sq1="delete from cartshow ;";
                sq2="delete from order1 ;";
               // sq = "insert into order1(Photo,pname,ptype,brand,price,qty,total) select Photo,pname,ptype,brand,price,qty,total from cartshow;";
                //sq3 = "insert into order2(Photo,pname,ptype,brand,price,qty,total) select Photo,pname,ptype,brand,price,qty,total from cartshow;";
                //int i = st.executeUpdate(sq);
                int c = st.executeUpdate(sq2);
                //int k = st.executeUpdate(sq3);
                //int j = st.executeUpdate(sq1);
                
                //out.println("Data is successfully inserted!");
                response.sendRedirect("log1.jsp");
                %><script>alert("Data is successfully inserted!");</script><%
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
%>