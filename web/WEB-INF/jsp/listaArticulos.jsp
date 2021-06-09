<%-- 
    Document   : listaArticulos
    Created on : 2/06/2021, 10:25:59 PM
    Author     : kokob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/png" href="https://image.freepik.com/vector-gratis/tienda-ropa-logo_18099-118.jpg"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>Articulos</title>
    </head>
    <body style="background-color: rgba(7F,7F,7F,0.8)">
        <h1>Lista de articulos</h1>
        <div style="margin-left: 20px;margin-top: 50px">
            <a href="articulo_nuevo.htm"><button type="button" class="btn btn-primary btn-lg btn-block">Agregar</button></a>
            <a href="jsonArticulos.htm"><button type="button" class="btn btn-success btn-lg btn-block">Obtener Json de los Articulos</button></a>
        </div>


        <div style="padding: 20px;text-align: center; font-size: 18px">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Marca</th>
                        <th scope="col">Precio Compra</th>
                        <th scope="col">Precio Venta</th>
                        <th scope="col">Talla</th>
                        <th scope="col">Existencias</th>
                        <th scope="col">Fecha Ingreso</th>
                        <th scope="col">Proveedor</th>
                        <th scope="col">Numero Proveedor</th>
                        <th scope="col">Registro creado el:</th>
                        <th scope="col" colspan="3">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="articulo" items="${articulos}">
                        <tr>
                            <td>${articulo.nombre}</td>
                            <td>${articulo.marca}</td>
                            <td>${articulo.precio_compra}</td>
                            <td>${articulo.precio_venta}</td>
                            <td>${articulo.talla}</td>
                            <td>${articulo.existencias}</td>
                            <td>${articulo.fecha_ingreso}</td>
                            <td>${articulo.proveedor}</td>
                            <td>${articulo.numero_proveedor}</td>
                            <td>${articulo.create_at}</td>
                            <td><a href="editar.htm?id=${articulo.id}"><button type="button" class="btn btn-secondary">Editar</button></a></td>
                            <td><button type="button" class="btn btn-danger" onclick="var r=confirm('Seguro'); if(r==true){location.href='borrar.htm?id=${articulo.id}'}else{}">Eliminar</button></td>
                            <td><a href="jsonArticulo.htm?id=${articulo.id}"><button type="button" class="btn btn-success">Json</button></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
