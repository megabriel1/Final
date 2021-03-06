
import com.mycompany.inventario.data.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import static javafx.scene.text.Font.font;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {

    ArrayList<Data> articulos = new ArrayList<Data>();
    
    protected void processRequest(HttpServletResponse response, String mensaje)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");    
            out.println("<meta charset=\"utf-8\">");
            out.println("<title>Servlet Servlet</title>");            
            out.println("</head>");
            out.println("<style>");  
            out.println("h1 {");
            out.println("color:dodgerblue;font-size:30px;");
            out.println("border-color:orange;");
            out.println("text-align: center");            
            out.println("}");        
            out.println("h3 {");
            out.println("text-align: center");            
            out.println("}");        
            out.println("</style>");  
            out.println("<body>");                           
            out.println("</h2>");            
            out.println("<h1>"+mensaje+"</h1>");
            out.println("<br/>");
            out.println("<br/>");            
            out.println("<h3><a href=\"http://localhost:8080/Inventario-1.0-SNAPSHOT/index.html\">Regresar</a></h3>");
            out.println("<br/>");                        
            out.println("<h3><a href=\"http://localhost:8080/Inventario-1.0-SNAPSHOT/Servlet\">Ver el listado de productos</a></h3>");                        
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
        request.setAttribute("articulos", articulos);
     
        request.getRequestDispatcher("segundo.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {                 
        
        String ID_nombre=request.getParameter("ID_nombre");        
        String nombre_producto = request.getParameter("nombre_producto");        
        String ID_categoria=(request.getParameter("ID_categoria"));             
        String nombre_categoria = request.getParameter("nombre_categoria");                              
        
        articulos.add(new Data(ID_nombre, nombre_producto, ID_categoria, nombre_categoria));                
        
        processRequest(response, "Articulo creado satisfactoriamente");       
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
