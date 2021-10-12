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
            ResultSet rs = stmt.executeQuery("SELECT * FROM empleado");
            %>
            <table>
            <tr>
            <th>ID </th>
            <th>NOMBRE </th>
            <th>PUESTO </th>
            <th>EMAIL </th>
            <th>TELEFONO </th>
            </tr>
<%
            while (rs.next()){
               int id = Integer.parseInt(rs.getString("id"));
               String nombre = rs.getString("nombre");
               String puesto = rs.getString("puesto");
               String email = rs.getString("email");
               String telefono = rs.getString("telefono");
               %>
               <tr>
               <td><%=id%></td>
               <td><%=nombre%></td>
               <td><%=puesto%></td>
               <td><%=email%></td>
     
<td><%=telefono%></td>
               </tr>
               <%
            }//fin del while
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
