<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <c:import url="Logout-parcial.jsp"/>
    
	<c:if  test="${not empty empresa }">
		   Empresa ${ empresa } Cadastrada com sucesso!
	</c:if>

	<c:if  test="${empty empresa }">
		Nenhuma empresa cadastrada com sucesso!
	</c:if>


</body>
</html>