<%-- 
    Document   : catalogo
    Created on : 30 nov. 2021, 13:53:08
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
  <link rel="stylesheet" type="text/css" href="css/catalogo_estilo.css">
	
	
	<!--Iconos-->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js"></script>

	<script type="text/javascript"> 
		$(window).on('load', function() {
		    $('#slider').nivoSlider(); 
		}); 
	</script>
</head>
<body>


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

<!-- home section end 
<p style="font-size: 18px">abeja</p>-->
<br>
<br>	
<%      
            //import java.sql.SQLException;
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/electrodomesticos","root","");            
            String SQL1="select nombre,stock,precio_venta,foto,descripcion from producto";
            PreparedStatement st1=con.prepareStatement(SQL1);
            ResultSet prod1=st1.executeQuery();
          %> 

<!-- home section end -->
<center>
<table width="1645" height="1494" border="0">
  <tbody>
    <tr>
      <td width="311" height="36"><ul>
        <li>
          <h1 style="font-size: 20px; color: rgba(34,12,143,1);">CATEGORÍAS</h1>
        </li>
      </ul></td>
		
      <td width="1271" colspan="2" rowspan="6">
		
		  <section>
			<br>
                    <div class="container">
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-container mySwiper">
                        <div class="swiper-wrapper">
                        <%
                        while (prod1.next()) {
                        %>    
                        
                            
                            <div class="swiper-slide">
                                    
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
                                            <a href="carrito.jsp">Añadir al carrito</a>

                                    </div>
                            </div>
                                    
                        <% } %>
                        
                            
                        </div>
                        </div>
                    </div>
                    
                    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
			  
			  
		  </section>
		  
		
		
		
		</td>
      <td width="49">&nbsp;</td>
      </tr>
    <tr>
      <td height="48"><form  class="desplegable">
        <select name="select" style="font-size: 18px">
          <option disabled selected="">Televisores </option>
          <optgroup label="Smarth tv"></optgroup>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          </select>
      </form></td>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <td height="47"><form  class="desplegable">
        <select name="select2" style="font-size: 18px">
          <option disabled selected="">Lavadoras </option>
          <optgroup label="Secadoras"></optgroup>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <optgroup label="Lavadoras"></optgroup>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <optgroup label="Lavadoras Semi Automaticas"></optgroup>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          </select>
      </form></td>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <td height="49"><form  class="desplegable">
        <select name="select3" style="font-size: 18px">
          <option disabled selected="">Televisores </option>
          <optgroup label="Smarth tv"></optgroup>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          </select>
      </form></td>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <td height="49"><form  class="desplegable">
        <select name="select5" style="font-size: 18px">
          <option disabled selected="">Televisores </option>
          <optgroup label="Smarth tv"></optgroup>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          <option>TV LG 4k 42464645</option>
          </select>
        </form></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="49"><p>
        <label>
          <strong style="color: rgba(34,13,161,1)">MARCAS</strong>
          <br>
          <input type="checkbox" name="CheckboxGroup1" value="casilla de verificación " id="CheckboxGroup1_0">
          LG </label>
        <br>
        <label>
          <input type="checkbox" name="CheckboxGroup1" value="casilla de verificación " id="CheckboxGroup1_1">
          Samsung </label>
        </p>
        <p>
          <label>
            <input type="checkbox" name="CheckboxGroup1_" value="casilla de verificación " id="CheckboxGroup1_2">
            Samsung </label>
          </p>
        <p>
          <label>
            <input type="checkbox" name="CheckboxGroup1_2" value="casilla de verificación " id="CheckboxGroup1_3">
            Samsung </label>
          </p>
        <p>
          <label>
            <input type="checkbox" name="CheckboxGroup1_3" value="casilla de verificación " id="CheckboxGroup1_4">
            Samsung </label>
        </p></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="49"><p>
        <strong style="color: rgba(34,13,161,1)">PRECIOS</strong>
        <br>
        <label>
          <input type="checkbox" name="CheckboxGroup1_4" value="casilla de verificación " id="CheckboxGroup1_5">
          &gt; 1000 </label>
        <br>
        <label>
          <input type="checkbox" name="CheckboxGroup1_4" value="casilla de verificación " id="CheckboxGroup1_6">
          &lt; 3000 </label>
        </p>
        <p>
          <label>
            <input type="checkbox" name="CheckboxGroup1_4" value="casilla de verificación " id="CheckboxGroup1_7">
            Samsung </label>
          </p>
        <p>
          <label>
            <input type="checkbox" name="CheckboxGroup1_4" value="casilla de verificación " id="CheckboxGroup1_8">
            Samsung </label>
          </p>
        <p>
          <label>
            <input type="checkbox" name="CheckboxGroup1_4" value="casilla de verificación " id="CheckboxGroup1_9">
            Samsung </label>
        </p></td>
      <td colspan="2"> <section>
        <div class="product">
          <picture>
            <img src="Imagenes/img_electrodomesticos/LG_Electronics-87453547-dm-01-mobile.jpg" alt="">
            </picture>
          <div class="detail">
            <p> <br>
              <br>
              <br>
              <strong>LG</strong> <br>
              <strong>TV LG OLED 65" 4k Smart ThinQ AI OLED65C1PSA (2021)</strong><br>
              <small>Disponibilidad: 10 en stock</small> </p>
            <samp>S/9,499.00</samp>
            </div>
          <div class="button">
            <br>
            <br>
            <br>
            <br>
            <a href="catalogo.jsp">Añadir al carrito</a>
            
            </div>
          </div>
        <div class="product">
          <picture>
            <img src="Imagenes/img_electrodomesticos/LG_Electronics-87453547-dm-01-mobile.jpg" alt="">
            </picture>
          <div class="detail">
            <p> <br>
              <br>
              <br>
              <strong>LG</strong> <br>
              <strong>TV LG OLED 65" 4k Smart ThinQ AI OLED65C1PSA (2021)</strong><br>
              <small>Disponibilidad: 10 en stock</small> </p>
            <samp>S/9,499.00</samp>
            </div>
          <div class="button">
            <br>
            <br>
            <br>
            <br>
            <a href="catalogo.jsp">Añadir al carrito</a>
            
            </div>
          </div>
        
        <div class="product">
          <picture>
            <img src="Imagenes/img_electrodomesticos/LG_Electronics-87453547-dm-01-mobile.jpg" alt="">
            </picture>
          <div class="detail">
            <p> <br>
              <br>
              <br>
              <strong>LG</strong> <br>
              <strong>TV LG OLED 65" 4k Smart ThinQ AI OLED65C1PSA (2021)</strong><br>
              <small>Disponibilidad: 10 en stock</small> </p>
            <samp>S/9,499.00</samp>
            </div>
          <div class="button">
            <br>
            <br>
            <br>
            <br>
            <a href="catalogo.jsp">Añadir al carrito</a>
            
            </div>
          </div>
        
        <div class="product">
          <picture>
            <img src="Imagenes/img_electrodomesticos/LG_Electronics-87453547-dm-01-mobile.jpg" alt="">
            </picture>
          <div class="detail">
            <p> <br>
              <br>
              <br>
              <strong>LG</strong> <br>
              <strong>TV LG OLED 65" 4k Smart ThinQ AI OLED65C1PSA (2021)</strong><br>
              <small>Disponibilidad: 10 en stock</small> </p>
            <samp>S/9,499.00</samp>
            </div>
          <div class="button">
            <br>
            <br>
            <br>
            <br>
            <a href="catalogo.jsp">Añadir al carrito</a>
            
            </div>
          </div>
        
        
        </section></td>
      <td>&nbsp;</td>
    </tr>
    <tr style="text-align: center">
      <td height="628"><p>&nbsp;</p>
        <section class="paginacion">
          <ul>
          <center>
              </center>
            </ul>
          
          </section>
        </td>
      <td height="628"><p>&nbsp;</p>
        <section class="paginacion">
          <ul>
            <center>
              <li class="disabled">&laquo;</li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
            </center>
          </ul>
        </section></td>
      <td>&nbsp;</td>
      <td height="628">&nbsp;</td>
    </tr>
    </tbody>
</table>

</center>
</main>
</body>	
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