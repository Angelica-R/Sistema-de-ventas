<%-- 
    Document   : contacto
    Created on : 30 nov. 2021, 13:54:31
    Author     : Arnold
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Contacto</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" type="text/css" href="css/contacto_estilo.css">
	<!--Iconos-->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
</head>

<body>
	<script src="js/script.js"></script>
<main>		
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
                   <a href="#" data-toggle="sub-menu">CATÁLOGO <i class="plus"></i></a>
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
                
                <li class="menu-item">
                   <a href="carrito.jsp"><i class="fas fa-shopping-cart"></i></a>
                </li>
                
             </ul>
           </nav>
           <!-- navigation menu end -->
        </div>
     </div>
  </header>
  <!-- header end -->
</main>	
</body>
<br>
<br>
<br>
<br>
<br>


<div class="container-contacto">
		<div class="contact-box">
			<div class="left"></div>
			<div class="right">
				<h2>Contáctenos</h2>
				<input type="text" class="field" placeholder="Escriba su nombre...">
				<input type="text" class="field" placeholder="Escriba su Email ...">
				<input type="text" class="field" placeholder="Escriba su numero de celular...">
				<textarea placeholder="Escriba un mensaje..." class="field"></textarea>
				<button class="btn">Enviar</button>
			</div>
		</div>
	</div>
	
<br>
<br>
<br>


	<footer class="pie-pagina">
	
	<div class="grupo-1">
		<div class="box">
			<figure>
			<a href="#"><img src="Imagenes/kamasa_logo.png" width="350"></a>
			</figure>
		</div>
		
		<div class="box">
			<h2>SOBRE NOSOTROS</h2>
			<p>Tiendas Kamasa es una empresa tacneña de ventas de electrodomesticos, que se preocupa por satisfacer siempre las necesidades de sus clientes, brindando gran variedad de productos de las mejores marcas a los mejores precios.</p>
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
	


</html>

