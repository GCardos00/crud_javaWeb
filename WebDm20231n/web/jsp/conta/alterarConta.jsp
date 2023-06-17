<%@page import="backenddm20231n.controller.ControllerConta"%>
<%@page import="backenddm20231n.model.bean.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Conta res = new Conta(id);
    ControllerConta resCont = new ControllerConta();
    res = resCont.buscar(res);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CONTA</h1>
        <form name="alterarConta" action="validaAlterarConta.jsp" method="post">
            Nome <input type="text" name="NOMECONTA" value="<%=res.getNomeConta()%>"> <br>
            Banco: <input type="text" name="BANCO" value="<%=res.getBanco()%>"> <br>
            Valor: <input type="text" name="VALOR" value="<%=res.getValor()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=res.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>