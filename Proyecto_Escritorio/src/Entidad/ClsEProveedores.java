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
public class ClsEProveedores {

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    //int
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    private int id;
    private String nombre;
    private String email;
    private String telefono;
    
    public ClsEProveedores(){}
 
    public ClsEProveedores(int id, String nombre, String email, String name){
        this.id = id;
        this.nombre = nombre;
        this.email = email;
        this.email = telefono;
    }
    
    public String toString(){
        return this.nombre;
    } 
}
