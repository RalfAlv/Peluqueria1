<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hola mundo con JSP</title>
</head>
<body>
	<!--
	<%@ codigo java %>
	<% codigo java con N varibles  %>
	<%= codigo java con una varible %>-->

	<% out.println("Hola Mundo");
	int n1 = Integer.parseInt(request.getPameter("n1"));
	int n2 = Integer.parseInt(request.getPameter("n1"));
	int n3 = n1 + n2;
	out.println("La suma es: " + n3);
	 %>

</body>
</html>