<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.util.List, br.com.alura.gerenciador.serlvet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Tag Library</title>
</head>
<body>


	Lista de empresas: <br/>
	
	<ul>
		 <c:forEach items= "${empresas}" var="empresa">
		 		 <li>${empresa.nome}</li>
		 </c:forEach>
	</ul>
	
	  

</body>
</html>