<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ClaseProducto"%>
<%@page import="ModeloDAO.ClaseProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista Productos</title>
    </head>
    <body>
        <div>
           <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link active" href="Controlador?accion=listarProducto">Productos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Clientes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Facturacion</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">Informes</a>
                </li>
            </ul> 
        </div>
        <div class="container">
            <h2>Listado de Productos</h2>
            <a class="btn btn-success" href="Controlador?accion=nuevo">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Codigo</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Valor</th>
                        <th class="text-center">Stock</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <%
                    ClaseProductoDAO dao=new ClaseProductoDAO();
                    List<ClaseProducto>list=dao.listarProducto();
                    Iterator<ClaseProducto>iter=list.iterator();
                    ClaseProducto prod=null;
                    while(iter.hasNext()){
                        prod=iter.next();
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=prod.getCodigo()%></td>
                        <td class="text-center"><%=prod.getNombre()%></td>
                        <td class="text-center"><%=prod.getValor()%></td>
                        <td class="text-center"><%=prod.getStock()%></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?accion=editar&cod=<%=prod.getCodigo()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&cod=<%=prod.getCodigo()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
                
    </body>
</html>
