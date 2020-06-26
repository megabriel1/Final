
package com.mycompany.inventario.data;

public class Data {
    


    String ID_nombre;
    String nombre_producto;
    String ID_categoria;
    String nombre_categoria;    

    public Data(String ID_nombre, String nombre_producto, String ID_categoria, String nombre_categoria) {
        this.ID_nombre = ID_nombre;
        this.nombre_producto = nombre_producto;
        this.ID_categoria = ID_categoria;
        this.nombre_categoria = nombre_categoria;
    }

    public String getID_nombre() {
        return ID_nombre;
    }

    public void setID_nombre(String ID_nombre) {
        this.ID_nombre = ID_nombre;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getID_categoria() {
        return ID_categoria;
    }

    public void setID_categoria(String ID_categoria) {
        this.ID_categoria = ID_categoria;
    }

    public String getNombre_categoria() {
        return nombre_categoria;
    }

    public void setNombre_categoria(String nombre_categoria) {
        this.nombre_categoria = nombre_categoria;
    }

    
}    