<%-- 
    Document   : usuario
    Created on : 12-jul-2017, 10:16:31
    Author     : jfreyre
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>usuario | wilson store</title>
        <link rel="stylesheet" href="http://staticjw.com/n/templates/tabit/style.css?m=157" type="text/css" media="screen">
        <link rel="shortcut icon" type="image/x-icon" href="http://staticjw.com/n/favicon.ico">
        <meta charset="utf-8">
        <meta property="fb:app_id" content="280052272008788">
        <meta name="robots" content="noindex">
        <meta name="generator" content="N.nu">
        <style>html {padding-bottom:40px;}</style>
        <link rel="canonical" href="usuario.htm">
    </head>

    <body>

        <div id="page">
            <div id="header"></div>

            <div id="mainarea">
                <jsp:include page="menu.jsp" />


                <div id="contentarea">
                    <h1>Roles de Usuario</h1>
                    <form action="grabausuario.htm" method="POST">

                    <table width="550" height="47">
                        <tr>
                            <td width="311"><p>
                                    <label for="nombre2">Nombre :</label>
                                    <input type="text" name="nombre" id="nombre2"  size="10"/>
                                    </p>
                                    <p>
                                        <label for="nombre6">Apellidos:</label>
                                        <input type="text" name="apellido" id="nombre6"  size="10"/>
                                    </p>
                                    <p>
                                        <label for="nombre7">Correo :</label>
                                        <input type="text" name="correo" id="nombre7"  size="10"/>
                                    </p>
                                    <p>
                                        <label for="apellido4">Telefono :</label>
                                        <input type="text" name="telefono" id="apellido4" size="10"/>
                                    </p></td>
                            <td width="227"><p>
                                    <label for="nombre3">DNI :</label>
                                    <input type="text" name="dni" id="nombre3"  size="10" />
                                </p>
                                <p>
                                    <label for="apellido6">Direccion : </label>
                                    <input type="text" name="direccion" id="nombre"  size="10" />
                                </p>
                                <p>
                                    <label for="nombre4">Estado :</label>
                                    <select name="estado" id="estado">
                                        <c:forEach items="${estados}" var="c">
                                            <option value="${c.idEstado}">${c.descripcion}</option>
                                        </c:forEach>
                                    </select>

                                </p>
                                <p><input type="submit" name="btnGrabar" value="Grabar"/></p>
                            </td>

                        </tr>
                    </table>
                                </form>
                    <table width="550" bordercolor="#666666" border="1">
                        <tr bgcolor="#CCCCCC">
                            <td width="101"   class="first"><div align="center">Id</div></td>
                            <td width="101"   class="first"><div align="center">Usuario</div></td>
                            <td width="109" class="first"><div align="center">Correo</div></td>
                            <td width="64" class="first"><div align="center">Telefono</div></td>
                            <td width="64" class="second">DNI</td>
                            <td width="110" class="second">Direccion</td>
                            <td width="62" class="second"><div align="center">Estado</div></td>
                        </tr>
                        <c:forEach items="${usuarios}" var="c">                            
                            <tr>
                                <td class="first">${c.idUsuario}</td>
                                <td class="first">${c.nombre} ${c.apellido}</td>
                                <td class="first">${c.email}</td>
                                <td class="first">${c.telefono}</td>
                                <td class="second">${c.dni}</td>
                                <td class="second">${c.direccion}</td>
                                <td class="second">${c.estado}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <p>
                   
                </div>

                <div id="footer">
                    © 2017 Wilson.n.nu. Todos los derechos Reservados.
                </div>

            </div>



            <!-- --><div style="font:13px/19px verdana;text-align:center;position:fixed;left:0px;bottom:0px;height:20px;padding:5px 15px;color:#333;width:100%;background:#ddf;border-top:3px solid #eef;">Este sitio ha sido desarrollado usando <a href="http://www.n.nu" style="color:#33f;text-decoration:underline;background:url(http://staticjw.com/n/favicon.ico) left center no-repeat #ddf;padding-left:18px;" target="_blank">N.nu</a>, obtenga su propio <a href="http://www.n.nu" style="color:#33f;text-decoration:underline;" target="_blank">sitio web</a>.&nbsp;&nbsp;&nbsp;&nbsp;(<a href="admin\upgrade.php" style="color:#33f;text-decoration: underline;">Click here to renew the premium</a>)</div>



            <script>
                (function () { // Redistats, track version 1.0
                    var global_id = '1uocbogg';
                    var property_id = 292854;
                    var url = encodeURIComponent(window.location.href.split('#')[0]);
                    var referrer = encodeURIComponent(document.referrer);
                    var x = document.createElement('script'), s = document.getElementsByTagName('script')[0];
                    x.src = '//redistats.com/track.js?gid=' + global_id + '&pid=' + property_id + '&url=' + url + '&referrer=' + referrer;
                    s.parentNode.insertBefore(x, s);
                })();
            </script>

        </div></body>
</html><!-- Page generated in 0.00592 seconds at 12 Jul 13:24 -->
