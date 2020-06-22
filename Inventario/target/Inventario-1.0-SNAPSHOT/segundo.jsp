<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.inventario.data.Data"%>  
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base de datos</title>

    </head>
    <body>
        <h1>Listado de productos</h1>
        
        <%
        
        ArrayList<Data> articulos = (ArrayList<Data>) request.getAttribute("articulos");
        
                for(int i=0; i<articulos.size(); i++){
                out.println("<h3>");
                out.println("<br/>");
                out.println("Nombre del producto: "+articulos.get(i).getNombre_producto());                                
                out.println("<br/>");
                out.println("ID de la categoria: "+articulos.get(i).getID_categoria());                
                out.println("<br/>");
                out.println("Nombre de la categoria: "+articulos.get(i).getNombre_categoria());                
                out.println("<br/>");
                out.println("ID de los productos: "+articulos.get(i).getID_productos());
                out.println("</h3>");                
                }
        %>        
            
    </body>
    
    <h3><a href=\Inventario-1.0-SNAPSHOT/index.html>Regresar al menu principal</a></h3>
</html>