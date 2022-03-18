/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Entidad.ClsECategoria;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Entidad.*;
import Negocio.*;
import java.sql.PreparedStatement;
import java.util.Vector;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;

/**
 *
 * @author Arnold
 */
public class ClsNCategoria {

    public void Mtd_listar_categorias(JComboBox box){
        
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar(); 
        DefaultComboBoxModel value;
        Statement st = null;
        
        try{
            
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM categoria;");
            value = new DefaultComboBoxModel();
            value.addElement("seleccione una categoria");
            box.setModel(value);
            
            while(rs.next()){
                
                value.addElement(new ClsECategoria(rs.getInt(1),rs.getString(2)));
            }
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }finally{
            try{
                st.close();
                rs.close();
                con = null;
            }catch(Exception ex){
            }
        }
        
    }
    
    public boolean MtdRegistrarCategoria(ClsECategoria objECate) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
      String sql="Insert into categoria (nombre) values(?); ";
            try {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objECate.getNombre_cate()); 
            ps.executeUpdate();//permite actualizar 
            return true;
            }            
         catch (Exception e) {
            return false;
        }
    
    }
    
    public ResultSet MtdBucarCategoriaID(ClsECategoria objECate) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT id from categoria where nombre=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objECate.getNombre_cate());
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
