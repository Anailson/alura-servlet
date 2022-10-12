<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Tag Library</title>
</head>
<body>

	 <c:import url="logout-parcial.jsp"/>
	

	Usuario Logado: ${usuarioLogado.login }
	
	<br>
	<br>
	<br>

	<c:if  test="${not empty empresa }">
		   Empresa ${ empresa } Cadastrada com sucesso!
	</c:if>


	Lista de empresas: <br/>
	
	<ul>
		 <c:forEach items= "${empresas}" var="empresa">
		 	 <li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
		 	  	<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">edita</a>
		 	  	<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
		 	
		 <!-- 
		 <input type="button" style="background: blue;" onclick="window.location.href='/gerenciador/removeEmpresa?id=${empresa.id}';" value="Remover" />
		 	 	 
		 	 		
		  -->	
		 	 </li>
		 </c:forEach>
	</ul>
	
	  

</body>
</html>