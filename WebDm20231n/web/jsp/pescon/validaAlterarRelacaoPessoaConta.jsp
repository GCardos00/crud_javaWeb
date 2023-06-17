<%@page import="backenddm20231n.controller.ControllerPessoasContas"%>
<%@page import="backenddm20231n.model.bean.PessoasContas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idC = Integer.parseInt(request.getParameter("IDC"));
    int idP = Integer.parseInt(request.getParameter("IDP"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    PessoasContas respes = new PessoasContas(id,idC,idP,obs);
    ControllerPessoasContas respescont = new ControllerPessoasContas();
    respes = respescont.alterar(respes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPessoaConta.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    