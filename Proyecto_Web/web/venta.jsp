<%-- 
    Document   : venta
    Created on : 4 dic. 2021, 0:25:24
    Author     : Arnold
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Detalles_Catalogo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/venta-estilo.css">
	<!--Iconos-->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">	
	
</head>
<body>
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
                       <li class="menu-item"><a href="catálogo.jsp">Televisores</a></li>
                       <li class="menu-item"><a href="catálogo.jsp">Lavadoras</a></li>
                       <li class="menu-item"><a href="catálogo.jsp">Refrigeradoras</a></li>
                       <li class="menu-item"><a href="catálogo.jsp">Congeladoras</a></li>
					   <li class="menu-item"><a href="catálogo.html">Cocinas</a></li>
					   <li class="menu-item"><a href="catálogo.html">Secadoras</a></li>
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

<script src="js/script.js"></script>
<script type="text/javascript">
	function myFuction(smallImg){
	var fullImg=document.getElementById("imageBox");
	fullImg.src=smallImg.src;
}
</script>

<br>
<br>
<br>
<br>
<center>
	
<table width="1192" border="0">
  <tbody>
	
      <tr>
        <td height="52">&nbsp;</td>
        <td colspan="2" style="text-align: center"><strong style="text-align: center; font-size: 16px;">FINALIZA TU COMPRA COMPLETANDO LOS SIGUIENTES DATOS</strong></td>
        <td style="text-align: center">&nbsp;</td>
        <td width="432" rowspan="13" bgcolor="#f1efef" style="text-align: left"><div class="tabla"><table width="432" height="608" border="0">
		
          <tbody>
			 
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px; font-weight: 400; color: rgba(69,69,69,1);">&nbsp;</td>
              <td style="font-size: 14px; color: rgba(69,69,69,1);">&nbsp;</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px; font-weight: 400; color: rgba(69,69,69,1);"><strong>ID:</strong></td>
              <td style="font-size: 14px; color: rgba(69,69,69,1);">1</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px"><strong style="color: rgba(69,69,69,1)">PRODUCTO:</strong></td>
              <td style="font-size: 14px; color: rgba(69,69,69,1);">TV ASDADADD</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td width="49" height="30" style="font-size: 14px">&nbsp;</td>
              <td width="173" style="font-size: 14px"><strong style="color: rgba(69,69,69,1)">PRECIO DE VENTA:</strong></td>
              <td width="166" style="font-size: 14px; color: rgba(69,69,69,1);">S/ 9,499.00</td>
              <td width="26" style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px"><strong>IGV (18%):</strong></td>
              <td style="font-size: 14px; color: rgba(69,69,69,1);">55555555</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="55" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px"><strong style="font-size: 18px; color: rgba(208,55,57,1);">TOTAL COMPRA:</strong></td>
              <td style="font-size: 36px; color: rgba(208,55,57,1);"><span style="font-size: 36px"><strong style="font-size: 28px">S/</strong></span> <strong style="font-size: 28px">55555555</strong></td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="59" style="font-size: 14px">&nbsp;</td>
              <td colspan="2" rowspan="2" style="text-align: center; font-size: 12px;"><em style="color: rgba(58,155,189,1); font-size: 14px;"><strong style="text-align: center">Recibe tu producto aproximadamente entre 3 a 1 días hábiles</strong>.</em></td>
              <td style="text-align: center">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px"><strong style="color: rgba(69,69,69,1)">CANTIDAD:</strong></td>
              <td style="font-size: 14px">2</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td colspan="2" rowspan="2" style="text-align: center">Envios a todo el Perú <i class="fas fa-shipping-fast"></i></td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td colspan="2" rowspan="2" style="text-align: center"><img src="Imagenes/visa-logo.jpg" width="65" height="39" alt=""/><img src="Imagenes/MasterCard_Logo.png" width="69" height="41" alt=""/><img src="Imagenes/american-express-logo.png" width="78" height="38" alt=""/><img src="Imagenes/logo-Diners.jpg" width="72" height="39" alt=""/></td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="36" style="font-size: 14px">&nbsp;</td>
              <td style="text-align: center">&nbsp;</td>
              </tr>
            
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td colspan="2" rowspan="2" style="text-align: center">
                <button class="btncomprar">Finalizar pedido</button>
                </td>
              
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td height="30" style="font-size: 14px">&nbsp;</td>
              <td colspan="2" style="text-align: center; font-weight: 100;"><em><span style="font-size: 12px">*Al continuar está aceptando nuestros <span style="color: rgba(7,176,0,1)">Términos y Condiciones</span></span></em></td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            <tr>
              <td style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px">&nbsp;</td>
              <td style="font-size: 14px">&nbsp;</td>
              </tr>
            </tbody>
			
        </table></div></td>
        <td width="94" rowspan="13" style="color: rgba(255,255,255,1)">&nbsp;</td>
      </tr>
      <tr>
      <td width="33" height="30">&nbsp;</td>
      <td colspan="2" style="font-size: 16px;">&nbsp;</td>
      <td width="31">&nbsp;</td>
      </tr>
	 <div class="txt-info">
    <tr>
      <td height="30"></td>
      <td width="155"><strong style="font-size: 14px">DIRECCIÓN:</strong></td>
      <td><input type="text" name="direccion" id="textfield"></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="30" rowspan="6">&nbsp;</td>
      <td rowspan="6"><strong style="font-size: 14px">INFORMACIÓN DE PAGO:</strong></td>
      <td width="421" height="36" style="text-align: center"><em>Ingrese los datos de su tarjeta.</em></td>
    </tr>
    <tr>
      <td><em>Nombre del titular</em></td>
    </tr>
    <tr>
      <td><input type="text" name="nombretitular" id="textfield2"></td>
    </tr>
    <tr>
      <td><em>Número de tarjeta</em></td>
    </tr>
    <tr>
      <td><input type="text" name="numtarjeta" id="textfield3"></td>
    </tr>
	</div>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="30">&nbsp;</td>
      <td colspan="2" style="text-align: center"><em style="font-size: 14px">El nombre del comprador y del titular de la tarjeta deben coincidir</em></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="30">&nbsp;</td>
      <td colspan="2" style="text-align: center">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="49">&nbsp;</td>
      <td colspan="2" style="text-align: center">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="189">&nbsp;</td>
      <td colspan="2">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
	
    </tbody>
</table>

</center>
<!--<table width="910" height="487" border="1">
  <tbody>
    <tr>
      <td width="917">&nbsp;</td>
    </tr>
  </tbody>
</table>
 <table width="909" height="169" border="1">
  <tbody>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>-->
</body>
<br>
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


</html>