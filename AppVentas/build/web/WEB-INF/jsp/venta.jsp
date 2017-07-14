<%-- 
    Document   : crudProductos
    Created on : 24-jun-2017, 21:25:30
    Author     : sac
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>registrar ventas | wilson store</title>
        <link rel="stylesheet" href="http://staticjw.com/n/templates/tabit/style.css?m=157" type="text/css" media="screen">
        <link rel="shortcut icon" type="image/x-icon" href="http://staticjw.com/n/favicon.ico">
        <meta charset="utf-8">
        <meta property="fb:app_id" content="280052272008788">
        <meta name="robots" content="noindex">
        <meta name="generator" content="N.nu">
        <style>html {padding-bottom:40px;}</style>
        <link rel="canonical" href="registrar-ventas.htm">
    </head>

    <body>

        <div id="page">
            <div id="header"></div>

            <div id="mainarea">

                <jsp:include page="menu.jsp" />


                <div id="contentarea">
                    <h1>Registrar Venta</h1>
                    <table width="550" height="47">
                        <tr>
                            <td width="311"><p>
                                    <label for="nombre2">Codigo de Venta:</label>
                                    <input type="text" name="nombre2" id="nombre2"  size="10"/>
                                </p>
                                <p>
                                    <label for="apellido4">Cliente :</label>
                                    <input type="text" name="apellido3" id="apellido4" size="10"/>
                                </p>
                                <p>
                                    <label for="apellido5">Campaña : </label>
                                    <select name="campaña" id="campaña">
                                        <c:forEach items="${campañas}" var="c">
                                            <option value="${c.idCampaña}">${c.descripcion}</option>
                                        </c:forEach>
                                    </select>
                                </p></td>
                            <td width="227"><p>
                                    <label for="nombre3">Fecha :</label>
                                    <input type="text" name="nombre3" id="nombre3"  size="10" />
                                    dd/mm/yy</p>
                                <p>
                                    <label for="apellido6">Producto : </label>
                                    <select name="producto" id="producto">
                                        <c:forEach items="${productos}" var="c">
                                            <option value="${c.idProducto}">${c.descripcion}</option>
                                        </c:forEach>
                                    </select>
                                </p>
                                <p>
                                    <label for="nombre4">Cantidad :</label>
                                    <input type="text" name="nombre" id="nombre4"  size="10"/>
                                </p></td>
                        </tr>
                    </table>
                    <table width="540" bordercolor="#666666" border="1">
                        <tr>
                            <td   class="first"><div align="center">Codigo de Producto</div></td>
                            <td class="first"><div align="center">Descripcion</div></td>
                            <td class="first"><div align="center">Cantidad</div></td>
                            <td class="second"><div align="center">Precio</div></td>
                        </tr>
                        <tr>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="second">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="second">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="second">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="first">&nbsp;</td>
                            <td class="second">&nbsp;</td>
                        </tr>
                    </table>
                    <p>
                    <table width="539">
                        <tr>
                            <td><button>
                                    <div align="right"><b>Agregar</b></div>
                                </button>
                                </p></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td width="306"> <button>
                                    <div align="right"><b>Registrar </b></div>
                                </button></p></td>
                            <td width="221"><label for="nombre5">Precio Total :</label>
                                <input type="text" name="nombre4" id="nombre5"  size="10"/></td>
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
                    var global_id = '1eqrsoyl';
                    var property_id = 292854;
                    var url = encodeURIComponent(window.location.href.split('#')[0]);
                    var referrer = encodeURIComponent(document.referrer);
                    var x = document.createElement('script'), s = document.getElementsByTagName('script')[0];
                    x.src = '//redistats.com/track.js?gid=' + global_id + '&pid=' + property_id + '&url=' + url + '&referrer=' + referrer;
                    s.parentNode.insertBefore(x, s);
                })();
            </script>

        </div></body>
</html><!-- Page generated in 0.00412 seconds at 12 Jul 13:24 -->