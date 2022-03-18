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
public class ClsECategoria {
/*
    public ClsECategoria(int id, String name){
        this.id_cate = id;
        this.nombre_cate = name;
    }*/
    
    public ClsECategoria(){}
 
    public ClsECategoria(int id, String name){
        this.id_cate = id;
        this.nombre_cate = name;
    }
    
    public int getId_cate() {
        return id_cate;
    }

    public void setId_cate(int id_cate) {
        this.id_cate = id_cate;
    }

    public String getNombre_cate() {
         return nombre_cate;
     }

     public void setNombre_cate(String nombre_cate) {
         this.nombre_cate = nombre_cate;
     }
    
    public String toString(){
        return this.nombre_cate;
    } 
     
    private int id_cate;
    private String nombre_cate;
    
    public int toInt(){
        return this.id_cate;
    }
}
