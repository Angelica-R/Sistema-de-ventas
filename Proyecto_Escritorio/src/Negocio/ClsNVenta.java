/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Entidad.ClsECategoria;
import Entidad.ClsEMarca;
import Entidad.ClsEMarca;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import Negocio.ClsConexion;
import java.util.logging.Level;
import java.util.logging.Logger;
import Entidad.*;
import javax.swing.DefaultComboBoxModel;

/**
 *
 * @author Arnold
 */
public class ClsNVenta {
    
    public ResultSet MtdIdVenta() {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="select id FROM venta order by id desc limit 1";
        try
        {
            ps=con.prepareStatement(sql);                        
            rs=ps.executeQuery();            
            return rs;
        }            
        catch (Exception e)
        {
           
           rs=null;
           return rs;
        }
    }
    
    public boolean MtdRegistrarCliente(ClsECliente objECliente) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
      String sql="Insert IGNORE into cliente (dni,nombre,apellidos) values(?,?,?); ";
            try {
            ps=con.prepareStatement(sql);
            ps.setInt(1,objECliente.getDni());
            ps.setString(2,objECliente.getNombres()); 
            ps.setString(3,objECliente.getApellidos());
            ps.executeUpdate();//permite actualizar 
            return true;
            }            
         catch (Exception e) {
            return false;
        }
    
    }
    
    public boolean MtdRegistrarStock(ClsEStock objEStock) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
      String sql="Insert into stock (marca, stock) values(?,?); ";
            try {
            ps=con.prepareStatement(sql);
            ps.setString(1,objEStock.getMarca());
            ps.setInt(2,objEStock.getStock());
            ps.executeUpdate();//permite actualizar 
            return true;
            }            
         catch (Exception e) {
            return false;
        }
    
    }
    
    public boolean MtdRegistrarVenta(ClsEVenta objEVenta) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
      String sql="Insert into venta (total,fecha,Empleado_dni,Cliente_dni) values(?,?,?,?); ";
      
            try {
            ps=con.prepareStatement(sql);
            ps.setDouble(1,objEVenta.getTotal());
            ps.setString(2,objEVenta.getFecha());
            ps.setInt(3,objEVenta.getEmpleado_dni());
            ps.setInt(4,objEVenta.getCliente_dni());
            ps.executeUpdate();//permite actualizar 
            return true;
            }            
         catch (Exception e) {
            return false;
        }
    
    }
    int c = 1;

    public void MtdRegistrarDetalleVenta(ClsEDetalleVenta objEDetalleVenta) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
          
            String sql="INSERT INTO detalle_venta (cantidad,total_prod,Producto_id,Venta_id) VALUES(?,?,?,?); ";
            try {
            ps=con.prepareStatement(sql);
            ps.setInt(1,objEDetalleVenta.getCantidad()); 
            ps.setDouble(2,objEDetalleVenta.getTotal_prod());
            ps.setInt(3,objEDetalleVenta.getProducto_id());
            ps.setInt(4,objEDetalleVenta.getVenta_id());
            ps.executeUpdate();//permite actualizar 
            
            c=c+1;
            //return true;
            }            
                catch (Exception e) {
                    JOptionPane.showMessageDialog(null,"fallo");
            }  
    }
    
    public void MtdActualizarStock(ClsEProducto objEProducto){
        PreparedStatement ps=null;      
        Connection con=(Connection) ClsConexion.Conectar(); 
        String sql="UPDATE producto SET stock=? WHERE id=?; ";
        try {
        ps=con.prepareStatement(sql);
        ps.setInt(1,objEProducto.getStock());
        ps.setInt(2,objEProducto.getId());
        ps.executeUpdate();//permite actualizar 
        }            
        catch (Exception e) {
                JOptionPane.showMessageDialog(null,"fallo stock");
        }
         
    }

}
