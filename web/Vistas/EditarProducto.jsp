<%@page import="Modelo.ClaseProducto"%>
<%@page import="ModeloDAO.ClaseProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Producto</title>
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
            <div class="col-lg-6">
                <br>
               <%
                    ClaseProductoDAO dao=new ClaseProductoDAO();
                    String codigo=(String)request.getAttribute("codprod");
                    ClaseProducto p=(ClaseProducto)dao.list(codigo);
                %>
                <h2 align="center">Editar Producto</h2>
                <br>
                <form action="Controlador">
                    <table class="table table-bordered">
                        <tr>
                            <td><label>Codigo: </label></td>
                            <td><input class="form-control" type="text" name="txtCod" value="<%=p.getCodigo()%>" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label>Nombre: </label></td>
                            <td><input class="form-control" type="text" name="txtNom" value="<%=p.getNombre()%>"></td>
                        </tr>
                        <tr>
                            <td><label>Valor: </label></td>
                            <td><input class="form-control" type="text" name="txtVlr" value="<%=p.getValor()%>"></td>
                        </tr>
                        <tr>
                            <td><label>Stock: </label></td>
                            <td><input class="form-control" type="text" name="txtStock" value="<%=p.getStock()%>"></td>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                                <a class="btn btn-dark" href="Controlador?accion=listarProducto">Cancelar</a>
                            </th>
                        </tr>
                    </table>
                </form> 
            </div>
        </div>
    </body>
</html>
