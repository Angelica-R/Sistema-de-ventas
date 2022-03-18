/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Entidad.ClsECliente;
import javax.swing.JOptionPane;

/**
 *
 * @author Arnold
 */
public class ClsNCliente {
    
    public ResultSet MtdBucarCliente(ClsECliente objEc) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from cliente where dni=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setInt(1,objEc.getDni());
            rs=ps.executeQuery(); 
            
            if(rs==null){
                JOptionPane.showMessageDialog(null, "no hay registro de cliente");
                return rs;
            }
            return rs;
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
        }
    }
    
    public boolean MtdValidarCliente(ClsECliente objEC) {//lo parametros de mi objeto
            PreparedStatement ps=null;
            ResultSet rs=null;
            Connection con=(Connection) ClsConexion.Conectar();
            String sql="SELECT * from cliente where dni=?;";
            try {
            ps=con.prepareStatement(sql);
            ps.setInt(1,objEC.getDni());//setInt   si varchar /setString
            rs=ps.executeQuery();
            if(rs.next())
            { 
                return true;//esto e agregado
            }
                return false;
            }            
         catch (Exception e) {
            return false;
        }
    }
    
}
