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
public class ClsEProducto {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCategoria_id() {
        return Categoria_id;
    }

    public void setCategoria_id(int Categoria_id) {
        this.Categoria_id = Categoria_id;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }
    
    
    
    public String toString(){
        return this.nombre;
    }
    
    public int getStockReferencial() {
        return StockReferencial;
    }

    public void setStockReferencial(int StockReferencial) {
        this.StockReferencial = StockReferencial;
    }
    
    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }
    
    public int getDni_Empleado() {
        return Dni_Empleado;
    }

    public void setDni_Empleado(int Dni_Empleado) {
        this.Dni_Empleado = Dni_Empleado;
    }
    
    public int getMarca() {
        return marca;
    }

    public void setMarca(int marca) {
        this.marca = marca;
    }
    
    
    private int id;
    private String nombre;

    
    private int marca;
    private int stock;
    private int Categoria_id;
    private double precio_venta;
    private double precio_compra;
    
    private int StockReferencial;
    private int Dni_Empleado;
    private int Cargo_id;
    private String Foto;
    private String Descripcion;
    private String Estado;
    private int Empleado_id;
    
    public int getEmpleado_id() {
        return Empleado_id;
    }

    public void setEmpleado_id(int Empleado_id) {
        this.Empleado_id = Empleado_id;
    }
    
    
    

    public int getCargo_id() {
        return Cargo_id;
    }

    public void setCargo_id(int Cargo_id) {
        this.Cargo_id = Cargo_id;
    }
    

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String Foto) {
        this.Foto = Foto;
    }
    

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    

    
    
    //private byte [] imagen;
    
    public ClsEProducto(){}
    
    public ClsEProducto(int id, String nombre,int marca,int stock,double precio_venta){
        this.id = id;
        this.nombre = nombre;
        this.marca = marca;
        this.stock = stock;
        this.precio_venta = precio_venta;
    }
}
