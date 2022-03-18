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
import javax.swing.JOptionPane;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Arnold
 */
public class ClsNEmpleado {
    
    
    public ResultSet MtdListar_Empleados() {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from empleado;";
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
    
    public void MtdEliminar(int a) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="delete from empleado where dni=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setInt(1,a);
            ps.executeUpdate();
        }            
        catch (Exception e)
        {
            System.out.println(e);
           
        }
    }
    
    public void MtdEstado(String estado, int dni) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="update empleado set estado=? where dni=?; ";
        try
        {
            ps=con.prepareStatement(sql);
            ps.setString(1,estado);
            ps.setInt(2,dni);            
            ps.executeUpdate();//permite actualizar 
            
        }            
        catch (Exception e)
        {
            System.out.println(e);
           
        }
    } 
    
    public ResultSet MtdBuscar(ClsEEmpleado objEEmp) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from empleado where dni=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setInt(1,Integer.parseInt(objEEmp.getB()));
            rs=ps.executeQuery();   
            return rs;
            
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
           
        }
    }
    
    public boolean MtdRegistrarEmpleado(ClsEEmpleado objEEmp) {
      PreparedStatement ps=null;      
      Connection con=(Connection) ClsConexion.Conectar();
      String sql="Insert into empleado (dni,nombres,apellidos,estado,clave,cargo) values(?,?,?,?,?,?); ";
            try {
            ps=con.prepareStatement(sql);
            ps.setString(1,objEEmp.getDni());
            ps.setString(2,objEEmp.getNombres());
            ps.setString(3,objEEmp.getApellidos());
            ps.setString(4,objEEmp.getEstado()); 
            ps.setString(5,objEEmp.getClave());
            ps.setInt(6,objEEmp.getCargo()); 
             
            ps.executeUpdate();//permite actualizar 
            return true;
            }            
         catch (Exception e) {
            return false;
        }
    
    }
    
    
    public ResultSet MtdBuscar1(ClsEEmpleado objEEmp) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from empleado where nombres=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEEmp.getB());
            rs=ps.executeQuery();   
            return rs;
            
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
           
        }
    }
    
    public ResultSet MtdBuscar2(ClsEEmpleado objEEmp) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from empleado where apellidos=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEEmp.getB());
            rs=ps.executeQuery();   
            return rs;
            
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
           
        }
    }
    
    public ResultSet MtdBuscar3(ClsEEmpleado objEEmp) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from empleado where cargo=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEEmp.getB());
            rs=ps.executeQuery();   
            return rs;
            
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
           
        }
    }
    
    public ResultSet MtdBuscar4(ClsEEmpleado objEEmp) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from empleado where estado=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEEmp.getB());
            rs=ps.executeQuery();   
            return rs;
            
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
           
        }
    }
    
    public ResultSet MtdBuscar5(ClsEEmpleado objEEmp) {
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection con=(Connection) ClsConexion.Conectar();
        String sql="SELECT * from empleado where clave=?;";
        try
        {
            ps=con.prepareStatement(sql); 
            ps.setString(1,objEEmp.getB());
            rs=ps.executeQuery();   
            return rs;
            
        }            
        catch (Exception e)
        {
           rs=null;
           return rs;
           
        }
    }
    
    public ResultSet MtdCargo_id(ClsEEmpleado objEEmp) {
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
