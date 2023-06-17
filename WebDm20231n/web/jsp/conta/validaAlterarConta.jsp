<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Conta"%>
<%@page import="backenddm20231n.controller.ControllerConta"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nomeconta = request.getParameter("NOMECONTA");
    String banco = request.getParameter("BANCO");
    String valor = request.getParameter("VALOR");
    String pbusca = request.getParameter("PBUSCA");
    Conta res = new Conta(id,nomeconta,banco,valor);
    ControllerConta resCont = new ControllerConta();
    res = resCont.alterar(res);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarConta.jsp?NOMECONTA=" + pbusca;
    response.sendRedirect(url);
%>