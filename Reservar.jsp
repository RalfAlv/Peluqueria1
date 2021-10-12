<%@ page import="java.io.*,javax.servlet.*,javax.servlet.http.*,java.sql.*;" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=  , initial-scale=1.0">
   <title>Reservar</title>
</head>
<body>
   <% Connection con = null; 
   try{
Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost/peluqueria", "root", "");
         if(con!=null){

            Statement stmt=con.createStatement();

             int id = Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String telefono = request.getParameter("telefono");
            String email = request.getParameter("email");
            String fecha = request.getParameter("fecha");
            String hora = request.getParameter("hora");
            
            
            
            
            String insertar="INSERT INTO cliente VALUES ("+id+"," +"'"+nombre+"'"+","+"'"+apellidos+"'"+","+"'"+telefono+"'"+","+"'"+email+"'"+","+"'"+fecha+"'"+","+"'"+hora+"'"+")";
            //out.println(insertar);//Imprime los datos obtenidos del form;
            
                        
            int registro = stmt.executeUpdate("INSERT INTO cliente VALUES ("+id+"," +"'"+nombre+"'"+","+"'"+apellidos+"'"+","+"'"+telefono+"'"+","+"'"+email+"'"+","+"'"+fecha+"'"+","+"'"+hora+"'"+")");//executeUpdate en realidad Inserta en la DB
            
            if(registro==1){
               out.println("<center><h1>RESERVACION EXITOSA</h1></center>");
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

