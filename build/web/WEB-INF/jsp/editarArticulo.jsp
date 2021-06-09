<%-- 
    Document   : editarArticulo
    Created on : 3/06/2021, 01:12:19 AM
    Author     : kokob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/png" href="https://image.freepik.com/vector-gratis/tienda-ropa-logo_18099-118.jpg"/>
        <title>Editar</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <style>
            body {margin:  0;}.page-content {width: 100%;margin:  0 auto;background: #75e2e9;display: flex;display: -webkit-flex;justify-content: center;-o-justify-content: center;-ms-justify-content: center;-moz-justify-content: center;-webkit-justify-content: center;align-items: center;-o-align-items: center;-ms-align-items: center;-moz-align-items: center;-webkit-align-items: center;background-image: -moz-linear-gradient( 136deg, rgb(149,153,226) 0%, rgb(139,198,236) 100%);background-image: -webkit-linear-gradient( 136deg, rgb(149,153,226) 0%, rgb(139,198,236) 100%);background-image: -ms-linear-gradient( 136deg, rgb(149,153,226) 0%, rgb(139,198,236) 100%);}.form-v10-content  {background: #fff;width: 1100px;border-radius: 10px;-o-border-radius: 10px;-ms-border-radius: 10px;-moz-border-radius: 10px;-webkit-border-radius: 10px;box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);-o-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);-ms-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);-moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);-webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);margin: 95px 0;position: relative;font-family: 'Montserrat', sans-serif;}.form-v10-content .form-detail {position: relative;width: 100%;display: flex;display: -webkit-flex;}.form-v10-content .form-detail h2 {font-weight: 500;font-size: 25px;margin-bottom: 34px;padding: 33px 50px 0px 60px;}.form-v10-content .form-detail .form-left {border-top-left-radius: 10px;border-bottom-left-radius: 10px;width: 100%;}.form-v10-content .form-detail .form-left h2 {color: #2271dd;}.form-v10-content .form-detail .form-right {width: 100%;background: #4835d4;border-top-right-radius: 10px;border-bottom-right-radius: 10px;}.form-v10-content .form-detail .form-right h2 {color: #fff;}.form-v10-content .form-detail .form-group {display: flex;display: -webkit-flex;}.form-v10-content .form-detail .form-row {position: relative;margin-bottom: 24px;padding-left: 60px;padding-right: 50px;}.form-v10-content .form-detail .form-left .form-group .form-row.form-row-1 {width: 50%;padding: 0 12px 0 60px;}.form-v10-content .form-detail .form-left .form-group .form-row.form-row-2 {width: 50%;padding: 0 50px 0 12px;}.form-v10-content .form-detail .form-left .form-group .form-row.form-row-3 {width: 73%;padding: 0 12px 0 60px;}.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4 {width: 50%;padding: 0 50px 0 12px;}.form-v10-content .form-detail .form-right .form-group .form-row.form-row-1 {width: 50%;padding: 0 12px 0 60px;}.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 {width: 100%;padding: 0 50px 0 12px;}.form-v10-content .form-detail select,.form-v10-content .form-detail input {width: 100%;padding: 11.5px 15px 15px 15px;border: 1px solid transparent;background: transparent;appearance: unset;-moz-appearance: unset;-webkit-appearance: unset;-o-appearance: unset;-ms-appearance: unset;outline: none;-moz-outline: none;-webkit-outline: none;-o-outline: none;-ms-outline: none;font-family: 'Montserrat', sans-serif;font-size: 16px;box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;-o-box-sizing: border-box;-ms-box-sizing: border-box;}.form-v10-content .form-detail select {background: 0 0;position: relative;z-index: 9;cursor: pointer;}.form-v10-content .form-detail .form-left select {color: #666;}.form-v10-content .form-detail .form-right select {color: #f2f2f2;}.form-v10-content .form-detail .select-btn {z-index: 0;position: absolute;top: 30%;right: 11.5%;font-size: 18px;}.form-v10-content .form-detail .form-left .select-btn {color: #666;}.form-v10-content .form-detail .form-right .select-btn {color: #f2f2f2;}.form-v10-content .form-detail .form-group .form-row.form-row-4 .select-btn {top: 20%;right: 26%;}.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 .select-btn {top: 20%;right: 19%;}.form-v10-content .form-detail .form-left input {color: #000;}.form-v10-content .form-detail .form-right input {color: #fff;}.form-v10-content .form-detail .form-left input,.form-v10-content .form-detail .form-left select {border-bottom: 1px solid #ccc;}.form-v10-content .form-detail .form-left input:focus,.form-v10-content .form-detail .form-left select:focus {border-bottom: 1px solid #999;}.form-v10-content .form-detail .form-right input,.form-v10-content .form-detail .form-right select {border-bottom: 1px solid;border-bottom-color: rgba(255, 255, 255, 0.3);}.form-v10-content .form-detail .form-right input:focus,.form-v10-content .form-detail .form-right select:focus {border-bottom: 1px solid #ccc;}.form-v10-content .form-detail .form-right select option {background: #4835d4;}.form-v10-content .form-detail .form-checkbox {margin-top: 37px;padding: 0 50px 0 60px;position: relative;}.form-v10-content .form-detail .form-checkbox input {position: absolute;opacity: 0;}.form-v10-content .form-detail .form-checkbox .checkmark {position: absolute;top: 1px;left: 60px;height: 15px;width: 15px;border: 1px solid #e5e5e5;cursor: pointer;}.form-v10-content .form-detail .form-checkbox .checkmark::after {content: "";position: absolute;left: 5px;top: 1px;width: 3px;height: 8px;border: 1px solid #fff;border-width: 0 2px 2px 0;-webkit-transform: rotate(45deg);-ms-transform: rotate(45deg);-o-transform: rotate(45deg);-moz-transform: rotate(45deg);transform: rotate(45deg);display: none;}.form-v10-content .form-detail .form-checkbox input:checked ~ .checkmark::after {display: block;}.form-v10-content .form-detail .form-checkbox p {margin-left: 34px;color: #e5e5e5;font-size: 14px;font-weight: 400;}.form-v10-content .form-detail .form-checkbox .text {font-weight: 400;color: #fff;text-decoration: underline;}.form-v10-content .form-detail .form-right .form-row-last {padding-left: 60px;margin: 44px 0 10px;}.form-v10-content .form-detail .form-right .register {background: #fff;border-radius: 25px;-o-border-radius: 25px;-ms-border-radius: 25px;-moz-border-radius: 25px;-webkit-border-radius: 25px;box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);-o-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);-ms-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);-moz-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);-webkit-box-shadow: 0px 6px 17px 0px rgba(0, 0, 0, 0.15);width: 180px;border: none;margin: 6px 0 50px 0px;cursor: pointer;color: #333;font-weight: 700;font-size: 15px;}.form-v10-content .form-detail .form-right .register:hover {background: #ccc;}.form-v10-content .form-detail .form-right .form-row-last input {padding: 12.5px;}.form-v10-content .form-detail .form-left input::-webkit-input-placeholder { /* Chrome/Opera/Safari */color: #666;font-size: 16px;}.form-v10-content .form-detail .form-left input::-moz-placeholder { /* Firefox 19+ */color: #666;font-size: 16px;}.form-v10-content .form-detail .form-left input:-ms-input-placeholder { /* IE 10+ */color: #666;font-size: 16px;}.form-v10-content .form-detail .form-left input:-moz-placeholder { /* Firefox 18- */color: #666;font-size: 16px;}.form-v10-content .form-detail .form-right input::-webkit-input-placeholder { /* Chrome/Opera/Safari */color: #f2f2f2;font-size: 16px;}.form-v10-content .form-detail .form-right input::-moz-placeholder { /* Firefox 19+ */color: #f2f2f2;font-size: 16px;}.form-v10-content .form-detail .form-right input:-ms-input-placeholder { /* IE 10+ */color: #f2f2f2;font-size: 16px;}.form-v10-content .form-detail .form-right input:-moz-placeholder { /* Firefox 18- */color: #f2f2f2;font-size: 16px;}/* Responsive */@media screen and (max-width: 1199px) {.form-v10-content {margin:  95px 20px;}}@media screen and (max-width: 991px) and (min-width: 768px) {.form-v10-content .form-detail .form-group {flex-direction:  column;-o-flex-direction:  column;-ms-flex-direction:  column;-moz-flex-direction:  column;-webkit-flex-direction:  column;}.form-v10-content .form-detail .form-left .form-group .form-row.form-row-1,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-2,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-3,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4,.form-v10-content .form-detail .form-right .form-group .form-row.form-row-1,.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 {width: auto;padding: 0 50px 0 60px;}.form-v10-content .form-detail .select-btn,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4 .select-btn,.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 .select-btn {right: 15%;}}@media screen and (max-width: 767px) {.form-v10-content .form-detail {flex-direction:  column;-o-flex-direction:  column;-ms-flex-direction:  column;-moz-flex-direction:  column;-webkit-flex-direction:  column;}.form-v10-content .form-detail .form-right {border-top-right-radius: 0px;border-bottom-left-radius: 10px;}.form-v10-content .form-detail .form-left {padding-bottom: 50px;}}@media screen and (max-width: 575px) {.form-v10-content .form-detail .form-group {flex-direction:  column;-o-flex-direction:  column;-ms-flex-direction:  column;-moz-flex-direction:  column;-webkit-flex-direction:  column;}.form-v10-content .form-detail .form-row,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-1,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-2,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-3,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4,.form-v10-content .form-detail .form-right .form-group .form-row.form-row-1,.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 {width: auto;padding: 0 30px;}.form-v10-content .form-detail .select-btn,.form-v10-content .form-detail .form-left .form-group .form-row.form-row-4 .select-btn,.form-v10-content .form-detail .form-right .form-group .form-row.form-row-2 .select-btn {right: 15%;}.form-v10-content .form-detail h2 {padding: 33px 30px 0px 30px;}.form-v10-content .form-detail .form-checkbox {padding: 0 30px;}.form-v10-content .form-detail .form-checkbox .checkmark {left: 30px;}.form-v10-content .form-detail .form-right .form-row-last {padding-left: 0;text-align: center;margin: 44px 0 30px;}}
        </style>
    </head>
    <body class="form-v10">
        <div class="page-content">
            <div class="form-v10-content">
                <form:form method="post" class="form-detail" action="actualizar.htm">
                    <form:hidden path="id"/>
                    <div class="form-left">
                        <h2>Datos del producto</h2>
                        <div class="form-group">
                            <div class="form-row form-row-1">
                                <form:input path="nombre"  type="text" class="input-text" placeholder="Nombre del Producto" style="color:gray;"/>
                            </div>
                            <div class="form-row form-row-2">
                                <form:input path="marca"  type="text" class="input-text" placeholder="marca" style="color:gray;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row form-row-3" style="color:gray; font-size: 15px;text-align: center">
                                <label>Precio compra $</label><form:input path="precio_compra"  type="number" class="input-text" placeholder="Precio Compra" style="color:gray;"/>
                            </div>
                            <div class="form-row form-row-4" style="color:gray; font-size: 15px;text-align: center">
                                <label>Precio venta $</label><form:input path="precio_venta"  type="number" class="input-text" placeholder="Precio venta" style="color:gray;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row form-row-3" style="color:gray; font-size: 15px;text-align: center">
                                <label>&nbsp;</label><form:input path="talla"  type="text" class="input-text" placeholder="Talla" style="color:gray;"/>
                            </div>
                            <div class="form-row form-row-4" style="color:gray; font-size: 15px;text-align: center">
                                <label>Existencias</label><form:input path="existencias"  type="number" class="input-text" placeholder="Existencias" style="color:gray;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row form-row-3" style="color:gray; font-size: 15px;">
                                <label style="margin-left: 12px;">Fecha Ingreso</label><form:input path="fecha_ingreso"  type="date" class="input-text" placeholder="Talla" style="color:gray;"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-right">
                        <h2>Datos del proveedor</h2>
                        <div class="form-row" style="color:white">
                            <form:input path="proveedor"  type="text" class="input-text" placeholder="Nombre del proveedor"/>
                        </div>
                        <div class="form-row">
                            <form:input path="numero_proveedor"  type="text" class="input-text" placeholder="Numero del proveedor"/>
                        </div>
                        <div class="form-row" style="text-align: center">
                            <div class="form-group">
                                <div class="form-row-2 form-row">
                                    <a href="articulos.htm"><input type="button" name="register" class="register" value="Cancelar" style="background-color: red;color: white"></a>
                                </div>
                                <div class="form-row-2 form-row">
                                    <input type="submit" name="register" class="register" value="Actualizar Articulo">
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </body>
</html>

