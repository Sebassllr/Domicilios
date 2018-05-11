<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

	<spring:url value="/resources/css/main.css" var="main" />
	<spring:url value="/resources/js/jquery-3.3.1.min.js" var="jqueryJs" />
	<spring:url value="/resources/js/bootstrap.js" var="boostrapJs" />
	<spring:url value="/resources/js/bPopUp.js" var="bpopup" />
	<spring:url value="/resources/js/main.js" var="mainJs" />
	    
    <!-- CNDS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
   	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

	<!-- Javasript -->
    <script src="${jqueryJs}"></script>
    <script src="${boostrapJs}"></script>
    <script src="${bpopup}"></script>
    <script src="${mainJs}"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!-- Estilos -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Coiny" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rammetto+One" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
	<link href="${main}" rel="stylesheet" />
	</head>
	<body>
	
 			<!-- Buscar mensajeros -->
	<div id="popUpSearch">
		<div class="container">
			<div class="form__top">
			<h4>Buscar mensajero</h4>
			</div>		
			<form:form id="searchMensajero" modelAttribut="mensajero" class="form__bus" action="/mensajero_save_or_update"">
				<div class="dropdown"> 
				 <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Filtro 
				 <span class="caret"></span></button> 
				 <ul class="dropdown-menu" role="menu" aria-labelledby="menu1"> 
					 <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Cédula</a></li> 
					 <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Nombre</a></li> 
					 <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Placa</a></li>  
				 </ul> 
				</div> 
				<form:input class="input" type="text" placeholder="&#128100;  Buscar" path="mensajero.telefono"/>
				<div class="btn__form">
					<input class="btn__submit" type="submit" value="Buscar">
				</div>
			</form:form>
		</div>
	</div>
	
</body>

</html>