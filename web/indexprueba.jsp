
<%@page import="java.util.List"%>
<%
    if (session.getAttribute("logueado")!= "OK")
    {
        response.sendRedirect("login.jsp");
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Panel de Administracion</h1>
        <p>Usuarion :${sessionScope.usuario} </p>
        <p>bienvenido al panel de administracion</p>
        <br>
        <a href="LoginControlador?action=logout">salir [x]</a>

       
          <h1 align="center">JHOVANNA HUAYGUA CALLE </h1>
         <h1 align="center"><i>Libreria De Libros</i></h1>
  
        <h1>LISTADO DE SALUD</h1>
        <p><a href="Controlador?op=nuevo">nuevo blog</a></p>
        <table border = "1">
            <tr>

            <th>TITULO</th>
              <hr style="color: #0056b2;" />
            </tr>
            <c:forEach var="item" items="${lista}">
            
            <tr>
                
                <td>${item.titulo}</td>
            <tr>
               
                <td><a href="MainController?op=editar&id=${item.id}">editar</a></td></br>
                
                <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('esta seguro?'))">eliminar</a></td>
            </tr>
             </c:forEach>
        </table>
    </body>
</html>
