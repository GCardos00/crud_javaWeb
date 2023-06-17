<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
    String email = request.getParameter("EMAIL");
    String tipo = request.getParameter("TIPO");
    String pbusca = request.getParameter("PBUSCA");
    Pessoa pes = new Pessoa(id,nome,cpf,tipo,email);
    ControllerPessoa pesCont = new ControllerPessoa();
    pes = pesCont.alterar(pes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>