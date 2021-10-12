<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*;" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=	, initial-scale=1.0">
	<title>Citas</title>
</head>
<body>
	<% Connection con = null; 
	try{
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/peluqueria", "root", "");
if(con!=null){
         	Statement stmt=con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM cliente");
            %>
            <table>
            <tr>
            <th>ID </th>
            <th>NOMBRE </th>
            <th>APELLIDOS </th>
            <th>TELEFONO </th>
            <th>EMAIL </th>
            <th>FECHA </th>
            <th>HORA </th>
            
            </tr>
<%
            while (rs.next()){
               int id =Integer.parseInt(rs.getString("id"));
               String nombre =rs.getString("nombre");
               String apellidos =rs.getString("apellidos");
               String telefono =rs.getString("telefono");
               String email =rs.getString("email");
               String fecha =rs.getString("fecha");
               String hora =rs.getString("hora");
               %>
               <tr>
               <td><%=id%></td>
               <td><%=nombre%></td>
               <td><%=apellidos%></td>
               <td><%=telefono%></td>
               <td><%=email%></td>
               <td><%=fecha%></td>
               <td><%=hora%></td>
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
