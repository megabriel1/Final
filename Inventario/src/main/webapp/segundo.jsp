<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jstl.jsp"%>
<%@page import="com.mycompany.inventario.data.Data"%>  
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base de datos</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
    </head>
    <body>

	<a href="jstl.jsp"></a>  
        <table>
          <tr>
                    <th>ID del nombre</th>
                    <th>Nombre del producto</th>
                    <th>ID de la categoria</th>                    
                    <th>Nombre de la categoria</th>
                    <th>ID de los productos</th>
                </tr>
        <%
        
        ArrayList<Data> articulos = (ArrayList<Data>) request.getAttribute("articulos");
        
                for(int i=0; i<articulos.size(); i++){
                out.println("<h3>");
                out.println("ID del producto: "+articulos.get(i).getID_nombre());
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
        </table>                      
    </body>
    
    <h3><a href=\Inventario-1.0-SNAPSHOT/index.html>Regresar al menu principal</a></h3>
</html>