<%-- 
    Document   : carrito
    Created on : 30 nov. 2021, 12:50:24
    Author     : Arnold
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Carrito-de-compras</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/index_estilo.css">
	<!--Iconos-->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">	
	
</head>

<body>
	
	<script src="js/script.js"></script>
        <%
            
            
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/electrodomesticos","root","");            
            int cod=Integer.parseInt(request.getParameter("id"));//id es el parametro que bien de cargo
            String SQL="select * from producto where id="+cod;
            PreparedStatement st=con.prepareStatement(SQL);
            ResultSet resultado=st.executeQuery();
            

          %> 
       
        
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
             </ul>
           </nav>
           <!-- navigation menu end -->
        </div>
     </div>
  </header>
  <!-- header end -->
<br>
<br>
<br>
<br>
<br>
	<center>
	<table width="1632" border="0">
	  <tbody>
	    <tr>
	      <td height="32" colspan="9" style="text-align: center"><strong style="font-family: Montserrat; font-size: 18px; text-align: center; color: rgba(59,32,168,1);">CARRITO DE COMPRAS <i class="fas fa-shopping-cart"></i></strong></td>
	      <td width="56">&nbsp;</td>
	      <td width="355" rowspan="7">
			  <div class="container-generar-compra">
			  <table width="351" height="564" border="0">
	        <tbody>
	          <tr>
	            <td height="48" colspan="5" bgcolor="#E8E8E8" style="text-align: center"><strong style="color: rgba(0,0,0,1)">Generar Compra</strong></td>
	            </tr>
	          <tr>
	            <td height="39" colspan="5" style="text-align: center"></td>
	            </tr>
	          <tr>
	            <td width="45" style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="color: rgba(0,0,0,1)">Subtotal:</td>
	            <td width="38" style="text-align: center">&nbsp;</td>
	            </tr>
	          
				<tr>
	            <td style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="text-align: center"><input type="text" name="textfield" id="textfield"></td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          <tr>
	
				  
	            <td style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="color: rgba(0,0,0,1)">IGV (18%):</td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          <tr>
	            <td style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="text-align: center"><span style="text-align: center">
	              <input type="text" name="textfield2" id="textfield2">
	            </span></td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          <tr>
	            <td style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="color: rgba(0,0,0,1)">Total a Pagar:</td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          <tr>
	            <td style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="text-align: center"><span style="text-align: center">
	              <input type="text" name="textfield3" id="textfield3">
	            </span></td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          <tr>
	            <td style="text-align: center">&nbsp;</td>
	            <td width="76" style="color: rgba(0,0,0,1)">&nbsp;</td>
	            <td width="169" style="color: rgba(0,0,0,1)">&nbsp;</td>
	            <td width="1" style="color: rgba(0,0,0,1)">&nbsp;</td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          <tr>
	            <td height="50" style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="color: rgba(0,0,0,1)">
				  <center><button class="btncomprar">Generar Compra</button></center>
				 </td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          <tr>
	            <td height="61" style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="color: rgba(0,0,0,1)"><center><button class="btncomprar" href="venta.jsp"> Realizar Pago</button></center></td> 
	            <td style="text-align: center">&nbsp;</td>
                    <div class="button"> <a href="venta.jsp"></a></div>
	            </tr>
	          <tr>
	            <td height="80" style="text-align: center">&nbsp;</td>
	            <td colspan="3" style="color: rgba(0,0,0,1)">
				  
				  
				  
				  </td>
	            <td style="text-align: center">&nbsp;</td>
	            </tr>
	          </tbody>
          </table></div></td>
        </tr>
         <%
                        while (resultado.next()) {
                        %>          
                        
	    <tr>
	      <td width="44" height="40" bgcolor="#403792" style="text-align: center"><strong>ID</strong></td>
	      <td width="423" bgcolor="#403792" style="text-align: center"><strong>Producto</strong></td>
	      <td width="267" bgcolor="#403792" style="text-align: center"><strong style="text-align: center">Descripcion</strong></td>
	      <td width="83" bgcolor="#403792" style="text-align: center"><strong>Ma<span style="text-align: center">rca</span></strong></td>
	      <td width="90" bgcolor="#403792" style="text-align: center"><strong>Precio</strong></td>
	      <td width="79" bgcolor="#403792" style="text-align: center"><strong>Cantidad</strong></td>
	      <td width="91" bgcolor="#403792" style="text-align: center"><strong>Total</strong></td>
	      <td colspan="2" bgcolor="#403792" style="text-align: center"><strong>Acciones</strong></td>
	      <td>&nbsp;</td>
        </tr>
	    
        
        <tr>
          <td bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)"><%= resultado.getInt("id")%></td>
          <td bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)"><%= resultado.getString("nombre")%><img src=<%= resultado.getString("foto") %> width="256" height="164" alt=""/></td>
          <td bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)"><%= resultado.getString("descripcion")%></td>
          <td bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)">LG</td>
          <td bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)"><%= resultado.getDouble("precio_venta")%></td>
          <td bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)">1</td>
          <td bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)"><%= resultado.getDouble("precio_venta")%></td>
          <td width="50" bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)"><button class="check"><i class="fas fa-check"></i></button></td>
          <td width="48" bgcolor="#FFFFFF" style="color: rgba(0,0,0,1)"><button class="eliminar"><i class="fas fa-trash-alt"></i></button></td>
          <td>&nbsp;</td>
        </tr>
        
        
        
        
         <% } %>
        
         
         
         
      </tbody>
</table>
	</center>
	
</main>	
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

