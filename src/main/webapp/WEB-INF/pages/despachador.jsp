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
	<spring:url value="/resources/js/ajaxPost.js" var="ajaxPostJs" />
	<spring:url value="/resources/js/ajaxPost.js" var="ajaxPutJs" />
	
    <!-- CNDS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<!-- Javasript -->
    <script src="${jqueryJs}"></script>
    <script src="${boostrapJs}"></script>
    <script src="${bpopup}"></script>
    <script src="${mainJs}"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="${ajaxPutJs}"></script>
	<script src="${ajaxPostJs}"></script>
	
	<!-- Estilos -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Coiny" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rammetto+One" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
	<link href="${main}" rel="stylesheet" />
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<body>
<div class="border-body left-side">
		<div class="logo-img">
			<div class="title"></div>
		</div>
		<div  class="btn-group">
			<div class="dropdown buttons">
				<button onclick="dropdownMensajero()" class="btn btn-primary mb-2" id="menu1" data-toggle="dropdown" class="dropbtn">Mensajeros</button>
				<div id="myDropdown" class="dropdown-menu">
					<a href="mensajero">Administrar</a>
				</div>
			</div>

			<div class="dropdown buttons">
				<button onclick="dropdownMensajero2()"  class="btn btn-primary mb-2"  id="menu2" data-toggle="dropdown" class="dropbtn">Pedido</button>
				<div id="myDropdown2" class="dropdown-menu">
					<a href="pedido">Crear pedido</a> 
				</div>
			</div>
			<div class="dropdown buttons">
				<button id="chat" type="submit" class="btn btn-primary mb-2"><a class="btn btn-primary mb-2" href="chat">Chat</a></button>
			</div>
			<div class="dropdown buttons">
				<button type="submit" class="btn btn-primary mb-2">Ayuda</button>
			</div>
			<div id="msg"> </div>
		</div>
	</div>
	<div class="border-body rigth-side">
		<div class="header">
			<div class="title-blue">Gesti&#243;n de pedidos </div>
			<div class="blue-content">M&#243;dulo de gesti&#243;n y administraci&#243;n de pedidos y mensajeros.</div>
		</div>
		<div class="rigth-side-content">
			<div class="lane lbl" id="firstLane" ondrop="Mensajeros.drop(event)" ondragover="Mensajeros.allowDrop(event)">
				<div class="tag">En espera</div>
				<div draggable="true" ondragstart="Mensajeros.drag(event)" class="mensajero" id="mensajero1">
					<div class="border-blue">
						<div>Pedido 1</div>
						<div>Fecha de pedido</div>
						<div>Mensajero asignado</div>
					</div>
				</div>
				<div draggable="true" ondragstart="Mensajeros.drag(event)" class="mensajero" id="mensajero2">
					<div class="border-blue">
						<div>Pedido 1</div>
						<div>Fecha de pedido</div>
						<div>Mensajero asignado</div>
					</div>
				</div>
				<c:if test = "${not empty mensajero}">
					<div draggable="true" ondragstart="Mensajeros.drag(event)" class="mensajero" id="mensajero2">
						<div class="border-blue">
							<div>Pedido 1</div>
							<div>Fecha de pedido</div>
							<div>Mensajero asignado</div>
						</div>
					</div>
				</c:if>
				<div draggable="true" ondragstart="Mensajeros.drag(event)" class="mensajero" id="mensajero3">
					<div class="border-blue">
						<div>Pedido 1</div>
						<div>Fecha de pedido</div>
						<div>Mensajero asignado</div>
					</div>
				</div>
			</div>
			<div class="lane lbl" ondrop="Mensajeros.drop(event)" ondragover="Mensajeros.allowDrop(event)">
				<div class="tag">Despachado</div>
			</div>
			<div class="lane lbl" ondrop="Mensajeros.drop(event)" ondragover="Mensajeros.allowDrop(event)">
				<div class="tag">Entregado</div>
			</div>
			<div class="lane lbl" ondrop="Mensajeros.drop(event)" ondragover="Mensajeros.allowDrop(event)">
				<div class="tag">Cancelado</div>
			</div>
		</div>
	</div>
	<div id="popUp">
		<div>
			<select>
			  <option value="volvo">Mensajero 1</option>
			  <option value="saab">Mensajero 2</option>
			  <option value="mercedes">Mensajero 3</option>
			  <option value="audi">Mensajero 4</option>
			</select>
		</div>
	</div>
	
	<!--Asignar mensajeros -->
	<div id="popUpAsignar">
			<div class="container">
			<div class="form__top">
				<h4>Asignar mensajero</h4>
			</div>		
			<form class="form__reg" action="">
				<div class="dropdown"> 
				 <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Mensajeros 
				 <span class="caret"></span></button> 
					 <ul class="dropdown-menu" role="menu" aria-labelledby="menu1"> 
						 <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Juan</a></li> 
						 <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Pedro</a></li> 
						 <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Luis</a></li>
					</ul> 
				</div> 
				<div class="btn__form">
					<input class="btn__submit" type="submit" value="Asignar">
				</div>
			</form>
		</div>
	</div>
</body>
</html>