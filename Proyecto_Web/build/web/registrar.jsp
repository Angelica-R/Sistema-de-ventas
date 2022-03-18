<%-- 
    Document   : registrar
    Created on : 4 dic. 2021, 0:24:54
    Author     : Arnold
--%>

<%@page import= "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Registrar</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" type="text/css" href="css/registrar_estilo.css">
	<!--Iconos-->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
</head>


<!-- header start -->
  <header class="header">
     <div class="container">
        <div class="header-main">
           <div class="logo">
              <img src="Imagenes/kamasa_logo_header.png" width="170" height="46" alt=""/>
           </div>
           <div class="open-nav-menu">
              <span></span>
           </div>
           <div class="menu-overlay">
           </div>
           <!-- navigation menu start -->
           <nav class="nav-menu">
             <div class="close-nav-menu">
				 <img src="Imagenes/boton-cerrar.png" alt="close" width="22" height="22">
				               
             </div>
             <ul class="menu">
                <li class="menu-item">
                  <a href="index.jsp">INICIO</a>
                </li>
                <li class="menu-item">
                   <a href="nosotros.jsp">NOSOTROS </a>
                </li>

			   <li class="menu-item"></li>
				 <li class="menu-item"></li>
				 <li class="menu-item"></li>
				 <li class="menu-item"></li>
				 <li class="menu-item"></li>
				 <li class="menu-item"></li>
				<li class="menu-item"></li>
							 
			   <li class="menu-item">

				   <div class="box2">
				     <form>
				       <input type="text" name="input" placeholder="Buscar...">
				       <input type="submit" name="input" value="Buscar">
			         </form>
			       </div>
               </li>
				 <li class="menu-item"></li>
				<li class="menu-item"></li>
				 <li class="menu-item"></li>
				<li class="menu-item"></li>
				 <li class="menu-item"></li>
				<li class="menu-item"></li>
				 
				 
				 <li class="menu-item menu-item-has-children">
                   <a href="catalogo.jsp" data-toggle="sub-menu">CATÁLOGO <i class="plus"></i></a>
                   <ul class="sub-menu">
                       <li class="menu-item"><a href="catalogo.jsp">Televisores</a></li>
                       <li class="menu-item"><a href="catalogo.jsp">Lavadoras</a></li>
                       <li class="menu-item"><a href="catalogo.jsp">Refrigeradoras</a></li>
                       <li class="menu-item"><a href="catalogo.jsp">Congeladoras</a></li>
					   <li class="menu-item"><a href="catalogo.jsp">Cocinas</a></li>
					   <li class="menu-item"><a href="catalogo.jsp">Secadoras</a></li>
                   </ul>
                </li>
				 
				<li class="menu-item">
                  <a href="contacto.jsp">CONTACTO</a>
                </li>
				 <li class="menu-item">
                   <a href="iniciar_sesion.jsp">INICIAR SESION</a>
                </li>
             </ul>
           </nav>
           <!-- navigation menu end -->
        </div>
     </div>
  </header>
  <!-- header end -->
<body>
<br>
<br>
<br>
<br>






<center>
    
<form class="box_login" action="agregar.jsp" method="post">
  	<h1>REGISTRO NUEVO DE USUARIO</h1>
	<br>
	<div class="icon">
	<i class="far fa-user-circle"></i>
  	</div>
	<input type="text" name="textfield" placeholder="Escriba su dni">
        <input type="text" name="textfield2" placeholder="Escriba su nombre">
        <input type="text" name="textfield3" placeholder="Escriba sus apellidos">
        <input type="text" name="email" placeholder="Escriba su correo">
        <input type="text" name="textfield4" placeholder="Escriba su contraseña">
        <!--<div class="button"> <a href="Validarusuario">Ingresar</a> </div>-->
        <input type="submit" name="submit" href="agregar.jsp" value="REGISTRAR">
  	<!--<div class="button"> <a href="agregar.jsp">REGISTRAR</a></div>-->
      
        <div class="button"> <a href="iniciar_sesion.jsp">CANCELAR</a></div>
	
        <!--<div class="button">
					<br>
					<br>
					<br>
					<br>
					<a href="carrito.jsp">Añadir al carrito</a>

				</div>>-->
</form>  
    
    
    
    
  <!--  
<div class="tabla" action="agregar.jsp" method="post">
	<br>

	<div class="icon"><h1>REGISTRO NUEVO DE USUARIO </h1><i class="fas fa-user-plus"></i>
      
      </div>
  <table width="445" border="0">
  <tbody>
    
      
    <input type="text" name="textfield" placeholder="Escriba su dni">
    <input type="text" name="textfield2" placeholder="Escriba su nombre">
    <input type="text" name="textfield3" placeholder="Escriba sus apellidos">
    <input type="text" name="email" placeholder="Escriba su correo">
    <input type="text" name="textfield4" placeholder="Escriba su contraseña">
    
  <!-- 
    <tr>
      <td width="172" height="61" style="color: rgba(237,129,8,1);"> DNI</td>
      <td width="238" style="color: rgba(0,0,0,1)"><input name="textfield" type="text" id="textfield" placeholder="N° de Documento"></td>
    </tr>
    <tr>
      <td width="172" height="61" style="color: rgba(237,129,8,1)">Nombres</td>
      <td style="color: rgba(0,0,0,1)"><input name="textfield2" type="text" id="textfield2" placeholder="Escriba sus nombres..."></td>
      </tr>
    <tr>
      <td width="172" height="61" style="color: rgba(237,129,8,1)">Apellidos</td>
      <td style="color: rgba(0,0,0,1)"><input name="textfield3" type="text" id="textfield3" placeholder="Escriba sus apellidos..."></td>
      </tr>
    <tr>
      <td width="172" height="61" style="color: rgba(237,129,8,1)">Email</td>
      <td style="color: rgba(0,0,0,1)"><input name="email" type="email" id="email" placeholder="Escriba su email..." size="28" maxlength="38"></td>
      </tr>
    <tr>
      <td height="61" style="color: rgba(237,129,8,1)">Contraseña</td>
      <td style="color: rgba(0,0,0,1)"><input name="textfield4" type="text" id="textfield4" placeholder="Escriba su contraseña..."></td>
    </tr>
    <tr>
      <td height="61" style="color: rgba(237,129,8,1)">Confirmar contraseña</td>
      <td style="color: rgba(0,0,0,1)"><input name="textfield5" type="text" id="textfield5" placeholder="Confirme su contraseña..."></td>
    </tr>
  
  
    <tr>
      <div class="button"> <a href="agregar.jsp">REGISTRAR</a></div>
      
      <div class="button"> <a href="iniciar_sesion.jsp">CANCELAR</a></div>
      
      <td height="61" style="color: rgba(0,0,0,1)"><input type="button" name="button"  id="button" href="agregar.jsp" value="REGISTRAR"></td>
      <td style="color: rgba(0,0,0,1)"><input type="button" name="button2" id="button2" href="iniciar_sesion.jsp" value="CANCELAR"></td>
    </tr>
	  
    </tbody>
</table>
 
</div> -->
</center>
<br>
<br>


<script src="js/script.js"></script>
<footer class="pie-pagina">
	
	<div class="grupo-1">
		<div class="box">
			<figure>
			<a href="#"><img src="Imagenes/kamasa_logo.png" width="350"></a>
			</figure>
		</div>
		
		<div class="box">
			<h2>SOBRE NOSOTROS</h2>
			<p>LoremsaddsadaLoremsaddsadaL</p>
			<p>sadadikegjwjefiLoremsaddsada</p>
		</div>
		
		<div class="box">
			<h2>SIGUENOS</h2>
			<div class="red-social">
				<a href="#" class="fa fa-facebook"></a>
				<a href="#" class="fa fa-instagram"></a>
				<a href="#" class="fa fa-twitter"></a>
				<a href="#" class="fa fa-youtube"></a>
			</div>
		</div>
		
	  <div class="box">
			
			<h2>METODOS DE PAGO</h2
			
	 </div>
	  <img src="Imagenes/logo-Diners.jpg" width="58" height="30" alt=""/>	  <img src="Imagenes/MasterCard_Logo.png" width="55" height="28" alt=""/>	  <img src="Imagenes/american-express-logo.png" width="58" height="30" alt=""/>		<img src="Imagenes/visa-logo.jpg" width="58" height="30" alt=""/>		</div>
  </div>
	
  		<h3>Copyright © Todos los derechos reservados</h3>
	
	
</footer>
	

	
</body>
</html>


