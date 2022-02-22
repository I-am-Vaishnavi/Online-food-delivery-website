<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>XYZ store</title>
</head>
<body>
	<% 	String name = request.getParameter("name"); 
		int prod1 = Integer.parseInt(request.getParameter("item1")); 
		int prod2 = Integer.parseInt(request.getParameter("item2")); 
		int prod3 = Integer.parseInt(request.getParameter("item3")); 
		int sum = prod1 + prod2 + prod3 ; 
		
		out.println("<center>");
		out.println("<b><h1>Welcome to XYZ Store</h1></b>" + "<br>");
		out.println("<hr>");
		out.println("<b><h2>Welcome " + name + "</h2></b>");
		out.println("<hr><h3><pre>");
		out.println("Products	Amount<br>");
		out.println("Product 1 	:	" + prod1 + "<br>"); 
		out.println("Product 2 	:	" + prod2 + "<br>"); 
		out.println("Product 3 	:	" + prod3 + "<br>"); 
		out.println("<hr>");
		out.println(name + "'s Total (in $)is : " +sum + "</h3></pre>"); 
		out.println("<b><h1>Thank You for Shopping <br> Visit Again </h1></b>" + "<br>");
		out.println("</center>");
	%>
</body>
</html>