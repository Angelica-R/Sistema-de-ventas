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
public class ClsEMarca {

    public int getId_marca() {
        return Id_marca;
    }

    public void setId_marca(int Id_marca) {
        this.Id_marca = Id_marca;
    }

    public String getNombre_marca() {
        return Nombre_marca;
    }

    public void setNombre_marca(String Nombre_marca) {
        this.Nombre_marca = Nombre_marca;
    }
    
    public String getEmail_marca() {
        return Email_marca;
    }

    public void setEmail_marca(String Email_marca) {
        this.Email_marca = Email_marca;
    }

    public String getTelefono_marca() {
        return Telefono_marca;
    }

    public void setTelefono_marca(String Telefono_marca) {
        this.Telefono_marca = Telefono_marca;
    }
    
    private int Id_marca;
    private String Nombre_marca;
    private String Email_marca;
    private String Telefono_marca;
    
    public ClsEMarca(){}
    
    public ClsEMarca(int Id_marca, String Nombre_marca, String Email_marca, String Telefono_marca){
        this.Id_marca = Id_marca;
        this.Nombre_marca = Nombre_marca;
        this.Email_marca = Email_marca;
        this.Telefono_marca = Telefono_marca;
    }
    
    public String toString(){
        return this.Nombre_marca;
    } 
}
