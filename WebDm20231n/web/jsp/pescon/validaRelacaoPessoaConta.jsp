<%@page import="backenddm20231n.controller.ControllerPessoasContas"%>
<%@page import="backenddm20231n.model.bean.PessoasContas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>

<%
    int idC = Integer.parseInt(request.getParameter("IDC"));
    int idP = Integer.parseInt(request.getParameter("IDP"));
    String obs = request.getParameter("OBS");
    PessoasContas respes = new PessoasContas(idC,idP,obs);
    ControllerPessoasContas respescont = new ControllerPessoasContas();
    respes = respescont.inserir(respes);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoPessoaConta.jsp";
    response.sendRedirect(url);

%>