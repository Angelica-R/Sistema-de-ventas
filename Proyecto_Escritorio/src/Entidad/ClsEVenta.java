/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;
import java.util.Date;
/**
 *
 * @author Arnold
 */
public class ClsEVenta {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getCliente_dni() {
        return Cliente_dni;
    }

    public void setCliente_dni(int Cliente_dni) {
        this.Cliente_dni = Cliente_dni;
    }

    public int getEmpleado_dni() {
        return Empleado_dni;
    }

    public void setEmpleado_dni(int Empleado_dni) {
        this.Empleado_dni = Empleado_dni;
    }
    
    public ClsEVenta(){}
 
    public ClsEVenta(int id){
        this.id = id;
        
    }
    
    private int id;
    private String fecha;
    
    private double total;
    private int Cliente_dni;
    private int Empleado_dni;
    
    //private datetime hora;

}
