<%@page import="backenddm20231n.controller.ControllerConta"%>
<%@page import="backenddm20231n.model.bean.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nomeconta = request.getParameter("NOMECONTA");
    String banco = request.getParameter("BANCO");
    String valor = request.getParameter("VALOR");
 
    Conta res = new Conta(nomeconta,banco,valor);
    ControllerConta rescont = new ControllerConta();
    res = rescont.inserir(res);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirConta.jsp";
    response.sendRedirect(url);
%>

