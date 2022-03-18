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
public class ClsETrabajador {

    public String getDni_trab() {
        return dni_trab;
    }

    public void setDni_trab(String dni_trab) {
        this.dni_trab = dni_trab;
    }

    public String getClave_trab() {
        return clave_trab;
    }

    public void setClave_trab(String clave_trab) {
        this.clave_trab = clave_trab;
    }

    public String getNombre_trab() {
        return nombre_trab;
    }

    public void setNombre_trab(String nombre_trab) {
        this.nombre_trab = nombre_trab;
    }

    public String getApellido_trab() {
        return apellido_trab;
    }

    public void setApellido_trab(String apellido_trab) {
        this.apellido_trab = apellido_trab;
    }
    private String dni_trab;
    private String clave_trab;
    private String nombre_trab;
    private String apellido_trab;
}
