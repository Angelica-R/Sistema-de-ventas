/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Entidad.ClsEEmpleado;
import Entidad.ClsETrabajador;
import Presentacion.FrmLogin;
import javax.swing.JOptionPane;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author Arnold
 */
public class ClsControlLogin {
    public boolean MtdLogueoUsuario(ClsEEmpleado objEC) {//lo parametros de mi objeto
            PreparedStatement ps=null;
            ResultSet rs=null;
            Connection con=(Connection) ClsConexion.Conectar();
            String sql="SELECT * FROM empleado where dni=? and clave=?;";
            try {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEC.getDni());//setInt   si varchar /setString
            ps.setString(2,objEC.getClave());
            rs=ps.executeQuery();
            if(rs.next())
            {
                //JOptionPane.showMessageDialog(null, "Usted se ingresar al sistema ");
                return true;//esto e agregado
            }
            else
            {
                //JOptionPane.showMessageDialog(null, "Usted se encuentra suspendido del sistema ");
            }
                return false;
            }            
         catch (Exception e) {
            return false;
        }
    }
    
    public ResultSet MtdEstado(ClsEEmpleado objEmp) {//lo parametros de mi objeto
            PreparedStatement ps=null;
            ResultSet rs=null;
            Connection con=(Connection) ClsConexion.Conectar();
            String sql="SELECT estado FROM empleado where dni=?;";
            try
            {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEmp.getDni());
            rs=ps.executeQuery();   
            return rs;
            
            }            
            catch (Exception e)
            {
               rs=null;
               return rs;

            }
    }
    
    public ResultSet MtdCargo(ClsEEmpleado objEEmp) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT Cargo_id from empleado where dni=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEEmp.getDni());
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
