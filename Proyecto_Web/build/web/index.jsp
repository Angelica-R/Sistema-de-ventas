<%-- 
    Document   : index
    Created on : 30 nov. 2021, 13:12:07
    Author     : Arnold
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>


  <!DOCTYPE html>
<html lang="es">
<head>
  <title>index</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/index_estilo.css">
	<link rel="stylesheet" href="css/nivo-slider.css">
	<link rel="stylesheet" href="css/mi-slider.css">
	<link rel="stylesheet" type="text/css" href="css/carrusel-product.css">
	
	<!--Iconos-->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js"></script>
        <script src="js/carrito.js"></script>
	<script type="text/javascript"> 
		$(window).on('load', function() {
		    $('#slider').nivoSlider(); 
		}); 
	</script>
        
       
        
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
    
    <%      
            //import java.sql.SQLException;
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/electrodomesticos","root","");            
            String SQL1="select id,nombre,stock,precio_venta,foto,descripcion from producto where Categoria_id = 1";
            PreparedStatement st1=con.prepareStatement(SQL1);
            ResultSet prod1=st1.executeQuery();
            
            String SQL2="select id,nombre,stock,precio_venta,foto,descripcion from producto where Categoria_id = 2";
            PreparedStatement st2=con.prepareStatement(SQL2);
            ResultSet prod2=st2.executeQuery();
            
            String SQL3="select id,nombre,stock,precio_venta,foto,descripcion from producto where Categoria_id = 3";
            PreparedStatement st3=con.prepareStatement(SQL3);
            ResultSet prod3=st3.executeQuery();
            
            
          %> 
    
    
<script src="js/script.js"></script>
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
<br>

<!-- home section end -->
	
	<div class="slider-wrapper theme-mi-slider">
		<div id="slider" class="nivoSlider">     
		    <img src="Imagenes/banner1.png"  alt="" title="#htmlcaption1" />    
		    <img src="Imagenes/banner2.png"  alt="" title="#htmlcaption2" />    
		    <img src="Imagenes/banner3.png" alt="" title="#htmlcaption3" />     
		</div> 
	</div>
	
	


<script type="text/javascript" src="js/main.js"></script>

<main>
	
		<div class="text">
			<h1 style="font-size: 30px">Lo mejor en calidad en productos electrodomésticos</h1>
			<p style="font-size: 20px">
				Brindamos gran variedad de productos de las mejores marcas a los mejores precios, como son: LG, Daewo, Indurama, Electrolux, Samsung, Sony, Philips, entre otros.
			</p>
		</div>
		<header>
			
			<h1 style="color: rgba(39,39,39,1); font-size: 32px;">Televisores</h1>
			
			<p>
				
			</p>
		</header>
                        <br>
			<div class="container">
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-container mySwiper">
                        <div class="swiper-wrapper">
                            
                            <%
                        while (prod1.next()) {
                        %>   
                        <div class="swiper-slide" id="">
                                    
                                    <img src=<%= prod1.getString("foto") %> alt="">
                                    <div class="detail">
                                            <p> 
                                                    <br>
                                                    <br>    
                                                    <br>
                                                    
                                                    <b><%= prod1.getString("descripcion") %></b>
                                                    <br>
                                                    <br>
                                                    <small>Stock <%= prod1.getInt("stock") %></small>
                                            </p>
                                            <br>
                                            <br>
                                            <samp>Precio S/.<%= prod1.getDouble("precio_venta") %></samp>
                                    </div>
                                    <br>
                                    <br>
                                    
                                    
                                    <div class="button">
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <a href="carrito.jsp?id=<%= prod1.getInt("id")%>">Añadir al carrito</a>

                                    </div>
                        </div>
                                    
                        <% } %>
                        
                            
                        </div>
                        </div>
                    </div>
                    <script src="js/carrito.js"></script>
                    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
                    <script src="js/app.js"></script>
		
	
                    <br>
                    
	
	<header>
                
                
			<h1 style="color: rgba(39,39,39,1); font-size: 32px;">Consolas</h1>
				
			
		</header>
		
                        <br>
			<div class="container">
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-container mySwiper">
                        <div class="swiper-wrapper">
                        <%
                        while (prod2.next()) {
                        %>    
                        
                            
                            <div class="swiper-slide">
                                    
                                    <img src=<%= prod2.getString("foto") %> alt="">
                                    <div class="detail">
                                            <p> 
                                                    <br>
                                                    <br>    
                                                    <br>
                                                    
                                                    <b><%= prod2.getString("descripcion") %></b>
                                                    <br>
                                                    <br>
                                                    <small>Stock <%= prod2.getInt("stock") %></small>
                                            </p>
                                            <br>
                                            <br>
                                            <samp>Precio S/.<%= prod2.getDouble("precio_venta") %></samp>
                                    </div>
                                    <br>
                                    <br>
                                    <div class="button">
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <a href="carrito.jsp?id=<%= prod2.getInt("id")%>">Añadir al carrito</a>

                                    </div>
                            </div>
                                    
                        <% } %>
                        
                            
                        </div>
                        </div>
                    </div>
                    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
                    <script src="js/app.js"></script>
                <br>
	
	<header>
			<h1 style="color: rgba(39,39,39,1); font-size: 32px;">Smartphones</h1>
				
			<p>
				
			</p>
		</header>
		<br>
			<div class="container">
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-container mySwiper">
                        <div class="swiper-wrapper">
                        <%
                        while (prod3.next()) {
                        %>    
                        
                            
                            <div class="swiper-slide">
                                    
                                    <img src=<%= prod3.getString("foto") %> alt="">
                                    <br>
                                    <div class="detail">
                                            <p> 
                                                    <br>
                                                    <br>    
                                                    <br>
                                                    
                                                    <b><%= prod3.getString("descripcion") %></b>
                                                    <br>
                                                    <br>
                                                    <small>Stock <%= prod3.getInt("stock") %></small>
                                            </p>
                                            <br>
                                            <br>
                                            <samp>Precio S/.<%= prod3.getDouble("precio_venta") %></samp>
                                    </div>
                                    <br>
                                    <br>
                                    <div class="button">
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <a href="carrito.jsp?id=<%= prod3.getInt("id")%>">Añadir al carrito</a>

                                    </div>
                            </div>
                                    
                        <% } %>
                        
                            
                        </div>
                        </div>
                    </div>
                    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
                    <script src="js/app.js"></script>
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
	
</main>
</body>	

</html>
