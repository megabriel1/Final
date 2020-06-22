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
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
    </head>
    <body>
        <h1>Listado de productos</h1>
        
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/inventario" 
                           user="root" password="megabriel1" />
        
        <sql:query dataSource="${db}" var="Productos">
        
            select * from categoria;
            
        </sql:query>
            
            <table>
                <tr>
                    <th>ID del nombre</th>
                    <th>Nombre del producto</th>
                    <th>ID de la categoria</th>                    
                    <th>Nombre de la categoria</th>
                    <th>ID de los productos</th>
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
    <h3><a href=\Inventario-1.0-SNAPSHOT/index.html>Regresar al menu principal</a></h3>
</html>