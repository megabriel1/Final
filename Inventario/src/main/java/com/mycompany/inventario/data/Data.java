
package com.mycompany.inventario.data;

public class Data {

    String ID_nombre;
    String nombre_producto;
    String ID_categoria;
    String nombre_categoria;
    String ID_productos;

    public Data(String ID_nombre, String nombre_producto, String ID_categoria, String nombre_categoria, String ID_productos) {
        this.ID_nombre = ID_nombre;
        this.nombre_producto = nombre_producto;
        this.ID_categoria = ID_categoria;
        this.nombre_categoria = nombre_categoria;
        this.ID_productos = ID_productos;
    }

    public String getID_nombre() {
        return ID_nombre;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public String getID_categoria() {
        return ID_categoria;
    }

    public String getNombre_categoria() {
        return nombre_categoria;
    }

    public String getID_productos() {
        return ID_productos;
    }
    
    
    
}
