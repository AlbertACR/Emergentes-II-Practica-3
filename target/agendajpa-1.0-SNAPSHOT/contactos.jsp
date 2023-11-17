<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Contacto"%>
<%
    List<Contacto> lista = (List<Contacto>)request.getAttribute("contactos");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Contactos</title>
     
</head>
<body>
    <h1>Listado de Contactos</h1>
    <a class="button" href="MainController?action=add">Nuevo Contacto</a>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Teléfono</th>
            <th>Correo</th>
            <th colspan="2"> </th>

        </tr>
        <%
            for (Contacto item : lista){
        %>
        <tr>
            <td><%= item.getId()%></td>
            <td><%= item.getNombre()%></td>
            <td><%= item.getTelefono()%></td>
            <td><%= item.getCorreo()%></td>
            <td><a class="edit" href="MainController?action=edit&id=<%= item.getId() %>">Editar</a></td>
            <td><a class="delete" href="MainController?action=dele&id=<%= item.getId() %>">Eliminar</a></td>
        </tr>
        <%
          }
        %>
    </table>
    <style>
        body {
            font-family: 'Arial';
            margin: 20px;
        }

        h1 {
            color: #0074FF;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        th, td {
            border: 5px solid #ddd;
            padding: 15px;
            text-align: left;
            background-color:#BCD9FF ;
        }

        th {
            background-color: #7E04FF ;
            color: #fff;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a.button {
            display: inline-block;
            padding: 10px 15px;
            background-color:#009600;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        
        a.button:hover {
            background-color: #212328;
        }

        a.edit{
           display: inline-block;
            padding: 10px 15px;
            background-color:#0074FF;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-bottom: 20px;
        }
         a.edit:hover {
            background-color: #212328;
        }
        a.delete {
           display: inline-block;
            padding: 10px 15px;
            background-color:#DE0000;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        a.delete:hover {
            background-color: #212328;
        }
        
    </style>
</body>
</html>
