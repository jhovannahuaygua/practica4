
<%@page import="com.emergentes.modelo.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Blog blog = (Blog)request.getAttribute("blog");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     
	 
    <body bgcolor ="green">
      
  <h1 align="center">JHOVANNA HUAYGUA CALLE </h1>
        <h1>Nuevo Libro</h1>

        <form action="MainController" method="POST">
            <table border="5">
                <input type="hidden" name="id" value="${blog.id}">
                <tr>
                    <td>fecha</td>
                    <td><input type="text" name="fecha" value="${blog.fecha}"></td>
                </tr>
                 <tr>
                  
                <td>TITULO</td> 
                    <td><input type="text" name="titulo" value="${blog.titulo}"></td>
                </tr>
                <tr>
                    <td>contenido</td>
                    <td><input type="text" name="contenido" value="${blog.contenido}"></td>
                    
                </tr>
                <tr>
                    <hr style="color: #0056b2;" />
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
