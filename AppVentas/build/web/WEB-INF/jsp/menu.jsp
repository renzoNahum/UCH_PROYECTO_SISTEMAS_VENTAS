<%@page import="pe.uch.appventas.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="sidebar">
                    <div id="headerleft">
                        <h4><a href="main.htm">Wilson Store</a></h4>
                        <h5>Menu Principal</h5>
                        <h5>Usuario: ${usuario.nombre} ${usuario.apellido}</h5>
                    </div>
                  
                    <div id="menulinks">
                        <ul id="nav">
                            <li><a href="venta.htm">Registrar Venta</a></li>
                            <li><a href="producto.htm">Registrar Producto</a></li>
                            <li><a href="usuario.htm">Usuario</a></li>
                            <li><a href="reporteventa.htm">Reporte Venta</a></li>
                            <li><a href="reporteadministrativo.htm">Reporte Administrativo</a></li>
                        </ul>
                    </div>
                </div>