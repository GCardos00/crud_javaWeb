<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - CONTA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR CONTA</h1>
       <form name="consultarConta" action="validaConsultarConta.jsp" method="post">
           NOME: <input type="text" name ="NOMECONTA" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
