<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*;" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=	, initial-scale=1.0">
	<title>Mostrar</title>
</head>
<body>
	<% Connection con = null;
try{
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/papeleria", "root", "");
         if(con!=null){
         	Statement stmt=con.createStatement();
           int id = Integer.parseInt(request.getParameter("id"));
int registro = stmt.executeUpdate("DELETE FROM empleado WHERE id= "+id);
            if(registro==1){
            %>
               <h1>Registro Borrado</h1>
               <%
            }//fin del if de registro
         }//fin del if
      }//fin del try
      catch(SQLException e){
out.println("Error " +e);
      }
      catch(ClassNotFoundException e){
         out.println("Error " +e);
      }
%>
</body>
</html>