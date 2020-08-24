<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
  
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link  rel="icon"   href="img/favicon.png" type="image/png">


 <style>
footer {
  font-size: 20px;
  margin-bottom: 20px;

}
</style>
<script type="text/javascript">
            history.forward();
</script>

</head>
<body id="myPage">
<%
HttpSession sesion = request.getSession();
String Usuario="";
int perfil=0;



if(sesion.getAttribute("user")!=null && sesion !=null && sesion.getAttribute("perfil")!=null ){
    Usuario = sesion.getAttribute("user").toString();
    perfil= Integer.parseInt(sesion.getAttribute("perfil").toString()); 
    
    if(perfil!=2){
    	
        response.sendRedirect("LogIn.jsp");  }  
    
    } else{
    	response.sendRedirect("LogIn.jsp"); 
}

%>

<!-- Menu-->
	<jsp:include page="MenuDocente.jsp"></jsp:include>
<!--------- -->


<main class="page-content">
    <div class="container">
    
    
    
    <div class="page-header">
			<h1 class="all-tittles">Bienvenidos &nbsp;<small>Inicio</small></h1>
		</div>


		<div class="container-fluid" style="margin: 50px 0;">
			<div class="row">
				<div class="col-xs-12">
					<img src="img/institution.png" alt="user"
						class="img-responsive center-box" style="max-width: 110px;">
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
					Aqu&iacute podra administrar sus cursos, y las notas de los alumnos.
					Debera seleccionar el menu principal para las diferentes opciones</div>
			</div>
		</div>
   
    <div class="container-fluid" style="margin: 30px 0;">
			<div  align="center">
		<img src="img/logo.png" alt="user"
						class="img-responsive center-box">

			</div>
			
			<br/>
<footer class="container-fluid text-center">
  <a href="#myPage" title="Arriba">
  
    <i class="fas fa-chevron-circle-up"></i>
  </a>
  <p>© 2020 Laboratorio IV - UTN FRGP</p>
</footer>
		</div>
    	</div>
   
  </main>



</body>
</html>