<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
	<title>Servlet E Ajax</title>
</head>
<body>
	<div class="container">
		<div class="panel panel-default">
	  		<div class="panel-heading">Uso de Ajax e Servlets</div>
	  		<div class="panel-body">
	  			<form>
					<label id="label-1">Name:</label>
					<input type="text" class="form control" name="nomeexterno" id="nome"/>
	  				<button id="enviar" class="btn btn-default">Enviar</button>
	  			</form>
	  			<div id="resultado"></div>
	  		</div>
	  		<div class="panel-footer"></div>
		</div>
	</div>
</body>
<script src=<c:url value="/resources/js/jquery-3.1.0.min.js"/>></script>
<script>
	$("#enviar").on("click",function(event){
		var nomeexterno = $("#nome").val();
		$.get('\ajax',{nome:nomeexterno},function(responseText){
			$('#resultado').text(responseText);
		});
		event.preventDefault();
	});
</script>	
</html>
