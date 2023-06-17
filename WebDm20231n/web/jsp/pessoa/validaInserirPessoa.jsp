<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>

<%
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
    String tipo = request.getParameter("TIPO");
    String mail = request.getParameter("EMAIL");
 
    Pessoa pes = new Pessoa(nome,cpf,tipo,mail);
    ControllerPessoa pescont = new ControllerPessoa();
    pes = pescont.inserir(pes);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPessoa.jsp";
    response.sendRedirect(url);
%>

