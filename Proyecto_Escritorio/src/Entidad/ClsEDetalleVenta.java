/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author Arnold
 */
public class ClsEDetalleVenta {
/*
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
*/
    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    
    
    public double getTotal_prod() {
        return total_prod;
    }

    public void setTotal_prod(double total_prod) {
        this.total_prod = total_prod;
    }
    
    public void setTotal_prod(int total_prod) {
        this.total_prod = total_prod;
    }

    public int getProducto_id() {
        return Producto_id;
    }

    public void setProducto_id(int Producto_id) {
        this.Producto_id = Producto_id;
    }

    public int getVenta_id() {
        return Venta_id;
    }

    public void setVenta_id(int Venta_id) {
        this.Venta_id = Venta_id;
    }
    
    //private int id;
    private int cantidad;
    private double total_prod;
    private int Producto_id;
    private int Venta_id;
}
