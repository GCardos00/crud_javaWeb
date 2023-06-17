<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - CONTA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CONTA</h1>
        <form name="inserirConta" action="validaInserirConta.jsp" method="post">
            Nome: <input type="text" name="NOMECONTA" value=""> <br>
            Banco: <input type="text" name="BANCO" value=""> <br>
            Valor: <input type="text" name="VALOR" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
