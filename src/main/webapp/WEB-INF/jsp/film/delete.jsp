<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="it" class="h-100" >
	 <head>

	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	 	
	   <title>Visualizza Elemento</title>
	   
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Visualizza dettaglio</h5>
					    </div>
					    
					
					    <div class='card-body'>
					     <form:form modelAttribute="delete_film_attr" method="post" action="${pageContext.request.contextPath}/film/saveDeleteFilm" class="row g-3" novalidate="novalidate">
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Id:</dt>
							  <dd class="col-sm-9">${delete_film_attr.id}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Titolo:</dt>
							  <dd class="col-sm-9">${delete_film_attr.titolo}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Genere:</dt>
							  <dd class="col-sm-9">${delete_film_attr.genere}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data Pubblicazione:</dt>
							  <dd class="col-sm-9"><fmt:formatDate type="date" value = "${delete_film_attr.dataPubblicazione}" /></dd>
					    	</dl>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Durata (min.):</dt>
							  <dd class="col-sm-9">${delete_film_attr.minutiDurata}</dd>
					    	</dl>
					    	
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Regista :</dt>
							  <dd class="col-sm-9">${delete_film_attr.regista}</dd>
					    	</dl>
					    	
					    	
					    	
					    	</form:form>
					    </div>
					    <!-- end card body -->
					    
					    <div class='card-footer row' >
					        <a href="${pageContext.request.contextPath}/film" class='btn btn-outline-secondary col' style='width:80px'>
					            <i class='fa fa-chevron-left'></i> Back
					        </a>
					        
					        <form action="${pageContext.request.contextPath}/film/saveDeleteFilm" method="post">
					        	<button type="submit" name="submit" value="submit" id="submit" class="btn btn-danger col">Conferma </button>
					        	<input type="hidden" name="idFilm" value="${delete_film_attr.id}">
					        </form>
					        
					    </div>
					    

					          
		
						
  
							</div>
					<!-- end card -->
					</div>	
			  
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>