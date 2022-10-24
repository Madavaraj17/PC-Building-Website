<%@page import="java.sql.*,java.util.*"%>

<%

            String firstname = request.getParameter("pname");
            String prodtype = request.getParameter("type");
            String comp = request.getParameter("comp");
            String brand = request.getParameter("brand");
            String pprice = request.getParameter("price");
            String img = request.getParameter("img");
            String qty = request.getParameter("qty");

            try
            {
            	String connectionURL="jdbc:mysql://localhost:3306/test1";
                Connection connection=null;
            	 Class.forName("com.mysql.jdbc.Driver");
                 connection=DriverManager.getConnection(connectionURL,"root","root");   
                 
            String sq,sq1;
            sq="insert into addpro values('"+firstname+"','"+prodtype+"','"+comp+"','"+brand+"','"+pprice+"','"+img+"','"+qty+"')";
            //sq1="insert into student1 values('"+username+"','"+passwords+"')";

                Statement st=connection.createStatement();
            int i=st.executeUpdate(sq);
            //int j=st.executeUpdate(sq1);
               
            out.println("Data is successfully inserted!");

            }
            catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
            }
%>