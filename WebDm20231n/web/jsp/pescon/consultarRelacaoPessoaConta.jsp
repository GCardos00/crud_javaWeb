<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PESSOA - CONTA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR - PESSOA - CONTA</h1>
       <form name="consultarConta" action="validaConsultarRelacaoPessoaConta.jsp" method="post">
           ID: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
