<%-- 
    Document   : producto
    Created on : 12-jul-2017, 10:11:45
    Author     : jfreyre
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Producto| wilson store</title>
        <link rel="stylesheet" href="http://staticjw.com/n/templates/tabit/style.css?m=157" type="text/css" media="screen">
        <link rel="shortcut icon" type="image/x-icon" href="http://staticjw.com/n/favicon.ico">
        <meta charset="utf-8">
        <meta property="fb:app_id" content="280052272008788">
        <meta name="robots" content="noindex">
        <meta name="generator" content="N.nu">
        <style>html {padding-bottom:40px;}</style>
        <link rel="canonical" href="registrar-producto.htm">
    </head>

    <body>

        <div id="page">
            <div id="header"></div>

            <div id="mainarea">
                <jsp:include page="menu.jsp" />


                <div id="contentarea">
                    <h1>Registrar Producto</h1>

                    <form action="grabaproducto.htm" method="POST">
                        
                    <table width="550" height="47">
                        <tr>
                            <td width="311"><p>
                                    <label for="nombre2">Codigo de Producto:</label>
                                    <input type="text" name="codigo" id="nombre2"  size="10"/>
                                </p>
                                <p>
                                    <label for="apellido4">Descripcion :</label>
                                    <input type="text" name="descripcion" id="apellido4" size="10"/>
                                </p>
                                <p>
                                    <label for="apellido5">Stock : 
                                        <input type="text" name="stock" id="apellido" size="10"/>
                                    </label>
                                </p></td>
                            <td width="227"><p>
                                    <label for="apellido6">Promocion : </label>
                                    <select name="promocion" id="promocion">
                                        <c:forEach items="${promociones}" var="c">
                                            <option value="${c.idPromocion}">${c.descripcion}</option>
                                        </c:forEach>
                                    </select>
                                </p>
                                <p>
                                    <label for="nombre4">Precio S/. :</label>
                                    <input type="text" name="precio" id="nombre4"  size="10"/>
                                </p>
                                <p><input type="submit" name="btnGrabar" value="Grabar"/></p>
                            </td>
                        </tr>
                    </table>
                    </form>
                    <table width="550"  border="1">
                        <tr bgcolor="#CCCCCC">
                            <td width="91"   class="first"><div align="center">Codigo Producto</div></td>
                            <td width="85" class="first"><div align="center">Descripcion</div></td>
                            <td width="56" class="first"><div align="center">Precio</div></td>
                            <td width="52" class="first"><div align="center">Stock</div></td>
                            <td width="74" class="first"><div align="center">Promocion</div></td>
                            <td width="47" class="first"><div align="center">Editar</div></td>
                            <td width="99" class="second"><div align="center">Eliminar</div></td>
                        </tr>
                        <c:forEach items="${productos}" var="c">
                                                     
                        <tr>
                            <td class="first">${c.idProducto}</td>
                            <td class="first">${c.descripcion}</td>
                            <td class="first">${c.precio}</td>
                            <td class="first">${c.stock}</td>
                            <td class="first">${c.promocion_idPromocion}</td>
                            <td class="first">Editar</td>
                            <td class="second">Eliminar</td>
                        </tr>
                       </c:forEach>
                       
                    </table>
                    <p>      
                    <table width="539">
                        <tr>

                            <td width="306"></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"> <button>
                                    <div align="right"><b>Registrar </b></div>
                                </button></p></td>
                        </tr>
                    </table>

                </div>

                <div id="footer">
                    © 2017 Wilson.n.nu. Todos los derechos Reservados. <a href="http://www.free-css-templates.com/">Designed by Free CSS Templates</a>
                </div>

            </div>



            <!-- --><div style="font:13px/19px verdana;text-align:center;position:fixed;left:0px;bottom:0px;height:20px;padding:5px 15px;color:#333;width:100%;background:#ddf;border-top:3px solid #eef;">Este sitio ha sido desarrollado usando <a href="http://www.n.nu" style="color:#33f;text-decoration:underline;background:url(http://staticjw.com/n/favicon.ico) left center no-repeat #ddf;padding-left:18px;" target="_blank">N.nu</a>, obtenga su propio <a href="http://www.n.nu" style="color:#33f;text-decoration:underline;" target="_blank">sitio web</a>.&nbsp;&nbsp;&nbsp;&nbsp;(<a href="admin\upgrade.php" style="color:#33f;text-decoration: underline;">Click here to renew the premium</a>)</div>



            <script>
                (function () { // Redistats, track version 1.0
                    var global_id = '1vhganmr';
                    var property_id = 292854;
                    var url = encodeURIComponent(window.location.href.split('#')[0]);
                    var referrer = encodeURIComponent(document.referrer);
                    var x = document.createElement('script'), s = document.getElementsByTagName('script')[0];
                    x.src = '//redistats.com/track.js?gid=' + global_id + '&pid=' + property_id + '&url=' + url + '&referrer=' + referrer;
                    s.parentNode.insertBefore(x, s);
                })();
            </script>

        </div></body>
</html><!-- Page generated in 0.00606 seconds at 12 Jul 13:24 -->