<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	
	<spring:url value="/resources/css/bootstrap-grid.css" var="grid" />
	<spring:url value="/resources/css/bootstrap-reboot.css" var="reboot" />
	<spring:url value="/resources/css/style.css" var="styleCss" />
	<spring:url value="/resources/css/bootstrap.css" var="boostrapCss" />
	<spring:url value="/resources/js/jquery-3.3.1.min.js" var="jqueryJs" />
	<spring:url value="/resources/js/bootstrap.js" var="boostrapJs" />
	
	<!-- Estilos -->
	<link href="${boostrapCss}" rel="stylesheet" />
	<link href="${grid}" rel="stylesheet" />
	<link href="${reboot}" rel="stylesheet" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
	<link href="${styleCss}" rel="stylesheet" />
	
	<!-- Javasript -->
    <script src="${jqueryJs}"></script>
    <script src="${boostrapJs}"></script>
    
</head>
<body>
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">				
				<h4 class="modal-title">Ingresar</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form id="form">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" class="form-control" name="email" placeholder="Usuario" id="email" required="required">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input type="password" class="form-control" name="password" placeholder="Contraseña" id="password" required="required">
						</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block btn-lg"><a >Entrar</a></button>
					</div>
					<p class="hint-text"><a href="#">Olvidé mi contraseña?</a></p>
				</form>
			</div>
			<div class="modal-footer">¿Tienes cuenta? <a href="#">Crea una</a></div>
		</div>
	</div>
</body>
</html>