<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base de datos MySQL</title>
        <style>
            
table {
    
  font-family: arial, sans-serif;
  border-spacing: 5px;
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
        <h2 style="color:dodgerblue;">Listado de productos</h2>         
        
        
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/inventario" 
                           user="root" password="megabriel1" />
        
        <sql:query dataSource="${db}" var="Productos">
        
            select * from nombre_producto;
            
        </sql:query>
            
            <table>
                
                <tr>
                    <th style="color:tomato">ID del nombre</th>
                    <th style="color:tomato">Nombre del producto</th>
                    <th style="color:tomato">ID de la categoria</th>                    
                    <th style="color:tomato">Nombre de la categoria</th>
                    <th style="color:tomato">ID de los productos</th>
                </tr>                    
                
                <c:forEach var="row" items="${Productos.rows}" >
                    <tr>                       
                        <td><c:out value="${row.ID_nombre}"/></td>    
                        <td><c:out value="${row.nombre_producto}"/></td>    
                        <td><c:out value="${row.ID_categoria}"/></td>    
                        <td><c:out value="${row.nombre_categoria}"/></td>
                        <td><c:out value="${row.ID_productos}"/></td>
                        
                    </tr>    
                    
                </c:forEach>                    
            </table>
            <br/>           
    </body>    
</html>