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
<spring:url value="/resources/js/mensajero.js" var="mensajeroJs" />
   
   <!-- CNDS -->
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	<script src="https://www.gstatic.com/firebasejs/4.11.0/firebase.js"></script>
<script	src="https://www.gstatic.com/firebasejs/4.11.0/firebase-firestore.js"></script>

<!-- Javasript -->
   <script src="${jqueryJs}"></script>
   <script src="${boostrapJs}"></script>
   <script src="${bpopup}"></script>
   <script src="${mainJs}"></script>
   <script src="${mensajeroJs}"></script>
   
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>	


<!-- Estilos -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>  

</head>
<body>
	<table id="dataTable">
		<thead>
	      <tr>
	          	<th scope="col">Identificación</th>
				<th scope="col">Nombre</th>
				<th scope="col">Teléfono</th>
				<th scope="col">Placa</th>
	     </tr>
		</thead>
		<tbody id="tabla">
					
		</tbody>
	</table>
	</body>
	<script>
	
	 $(document).ready(function() {
		    $('#dataTable').DataTable();
		} );
	</script>

</html>