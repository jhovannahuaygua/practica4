<%@page import="com.emergentes.modelo.Blog"%>
<%@page import="java.util.List"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
    List<Blog> lista = (List<Blog>)request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="red">
         <h1 align="center"><i>PRACTICA N° 4</i></h1>
           <h1 align="center">JHOVANNA HUAYGUA CALLE </h1>
  <h1 align="center">Listado De Salud </h1>
     
        <p><a href="MainController?op=nuevo">nuevo libro</a></p>
           <table border = "5">
            <tr>
            <th>ID</th>
            <th>fecha</th>
            <th>TITULO</th>
            <th>contenido</th>
            </tr>
            <c:forEach var="item" items="${lista}">
            
            <tr>
                <td>${item.id}</td>
                <td>${item.fecha}</td>
                <td>${item.titulo}</td>
                <td>${item.contenido}</td>
                <td><a href="MainController?op=editar&id=${item.id}">modificar</a></td>
                <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('esta seguro?'))">eliminar</a></td>
              </tr>
             </c:forEach>
        </table>
    </body>
</html>
