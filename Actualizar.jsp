<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*;" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Actualizar</title>
</head>
<body>
	<% Connection con = null; 
   try{
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost/papeleria?characterEncoding=utf8","root","");
         if(con!=null){
            Statement stmt=con.createStatement();

            int id = Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            String puesto = request.getParameter("puesto");
            String email= request.getParameter("email");
            String telefono = request.getParameter("telefono");

             String actualizar="UPDATE empleado SET("+ "nombre = '"+nombre+"'"  +","+"puesto ="+"'"+puesto+"'" +","+"email ="+"'"+email+"'" +","+"telefono ="+"'"+telefono+"'"  +"WHERE id='"+id+"'"+")";
           
            out.println(actualizar);//Imprime los datos obtenidos del form;*/


             int registro = stmt.executeUpdate("UPDATE empleado SET "+ "nombre = '"+nombre+"'"  +","+"puesto ="+"'"+puesto+"'" +","+"email ="+"'"+email+"'" +","+"telefono ="+"'"+telefono+"'"  +"WHERE id='"+id+"';");

            if(registro==1){                                 
            %>
               <h1>Registro Actualizado</h1>
               <%
            }//fin del if de registro

        } //fin del if
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