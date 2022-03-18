/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Entidad.ClsEProducto;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Entidad.ClsEMarca;
import Negocio.*;
import java.sql.PreparedStatement;
import java.util.Vector;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import Entidad.ClsECategoria;
import Entidad.ClsEEmpleado;
import Entidad.ClsEProveedores;
import javax.swing.JOptionPane;

/**
 *
 * @author Arnold
 */
public class ClsNProducto {
    
    /*
    public void Mtd_listar_producto(JComboBox box, int id){
        
        DefaultComboBoxModel value;
        Connection con=(Connection) ClsConexion.Conectar();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            ps = con.prepareStatement("SELECT * from producto where Categoria_id = ?;");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            value = new DefaultComboBoxModel();
            box.setModel(value);
            while(rs.next()){
                value.addElement(new ClsEProducto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getDouble(5)));
            }
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }finally{
            try{
                ps.close();
                rs.close();
                con.close();
            }catch(Exception ex){
            }
        }
        
    }
    
    */
    public void Mtd_Sin_Categoria(JComboBox box){
        
        DefaultComboBoxModel value;
        value = new DefaultComboBoxModel();
        value.addElement("seleccione una categoria");
        box.setModel(value);
 
    }
    
    public boolean MtdRegistrarProducto(ClsEProducto objEProd) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
      String sql="Insert into producto (nombre,stock,stock_referencial,precio_venta,precio_compra,estado,foto,descripcion,Marca_id,Categoria_id,Empleado_id) values(?,?,?,?,?,?,?,?,?,?,?); ";
            try {
            ps=con.prepareStatement(sql);     
            ps.setString(1,objEProd.getNombre());
            
            JOptionPane.showMessageDialog(null,"nombre " + objEProd.getNombre());
            
            ps.setInt(2,objEProd.getStock()); 
            
            JOptionPane.showMessageDialog(null,"stock " + Integer.toString(objEProd.getStock()));
            
            ps.setInt(3,objEProd.getStockReferencial());
            
            JOptionPane.showMessageDialog(null,"stock referencial " + Integer.toString(objEProd.getStockReferencial()));
            
            ps.setDouble(4,objEProd.getPrecio_venta());
            
            JOptionPane.showMessageDialog(null,"precioventa " + String.valueOf(objEProd.getPrecio_venta()));
            
            ps.setDouble(5,objEProd.getPrecio_compra());
            
            JOptionPane.showMessageDialog(null,"precio compra" +String.valueOf(objEProd.getPrecio_compra()));
            
            ps.setString(6,objEProd.getEstado());
            
            JOptionPane.showMessageDialog(null,"estado " +objEProd.getEstado());
            
            ps.setString(7,objEProd.getFoto());
            
            JOptionPane.showMessageDialog(null,"foto " +objEProd.getFoto());
            
            ps.setString(8,objEProd.getDescripcion());
            
            JOptionPane.showMessageDialog(null,"descripcion " +objEProd.getDescripcion());
            
            ps.setInt(9,objEProd.getMarca());
            
            JOptionPane.showMessageDialog(null,"marca" +objEProd.getMarca());
            
            ps.setInt(10,objEProd.getCategoria_id());
            
            JOptionPane.showMessageDialog(null,"categoria " +Integer.toString(objEProd.getCategoria_id()));
            
            ps.setInt(11,objEProd.getEmpleado_id());
            
            JOptionPane.showMessageDialog(null,"empleado " +Integer.toString(objEProd.getEmpleado_id()));
            
            ps.executeUpdate();//permite actualizar 
            return true;
            }            
         catch (Exception e) {
            return false;
        }
    
    }
    
    public void Mtd_ListarMarca(JComboBox box){
        
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar(); 
        DefaultComboBoxModel value;
        Statement st = null;
        
        try{
            
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM marca;");
            value = new DefaultComboBoxModel();
            value.addElement("seleccione una marca");
            box.setModel(value);
            
            while(rs.next()){
                
                value.addElement(new ClsEMarca(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
            }
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }finally{
            try{
                st.close();
                rs.close();
                //conec.desconectar();
                con = null;
            }catch(Exception ex){
            }
        }
        
    }
    
    public ResultSet MtdBucarMarcaID(ClsEMarca objEMarca) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT id from marca where nombre=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEMarca.getNombre_marca());
            rs=ps.executeQuery();
            return rs;
            
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
           
        }
    }
    
    
    
    
}

