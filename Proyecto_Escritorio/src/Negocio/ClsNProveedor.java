/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Entidad.ClsECategoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import Entidad.ClsEProveedor;
import Entidad.ClsEProveedores;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;

/**
 *
 * @author Arnold
 */
public class ClsNProveedor {
    
    
    public boolean MtdRegistrarProveedor(ClsEProveedor objEProv) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
      String sql="Insert into proveedor (nombre,email,telefono) values(?,?,?); ";
            try {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEProv.getNombre());
            ps.setString(2,objEProv.getEmail());
            ps.setString(3,objEProv.getTelefono());
            ps.executeUpdate();//permite actualizar 
            return true;
            }            
         catch (Exception e) {
            return false;
        }
    }
    
    public void Mtd_ListarProveedores(JComboBox box){
        
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar(); 
        DefaultComboBoxModel value;
        Statement st = null;
        
        try{
            
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM proveedor;");
            value = new DefaultComboBoxModel();
            value.addElement("seleccione un proveedor");
            box.setModel(value);
            
            while(rs.next()){
                
                value.addElement(new ClsEProveedores(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
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
    
    public ResultSet MtdBucarProveedorID(ClsEProveedor objEProv) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT id from proveedor where nombre=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEProv.getNombre());
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
