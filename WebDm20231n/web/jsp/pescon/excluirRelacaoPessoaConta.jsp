<%@page import="backenddm20231n.controller.ControllerPessoasContas"%>
<%@page import="backenddm20231n.model.bean.PessoasContas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoasContas resPes = new PessoasContas(id);
    ControllerPessoasContas resPesCont = new ControllerPessoasContas();
    resPes = resPesCont.excluir(resPes);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPessoaConta.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

