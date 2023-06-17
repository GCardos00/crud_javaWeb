<%@page import="backenddm20231n.controller.ControllerConta"%>
<%@page import="backenddm20231n.model.bean.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Conta con = new Conta(id);
    ControllerConta resCont = new ControllerConta();
    con = resCont.excluir(con);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarConta.jsp?ID=" + pbusca;
    response.sendRedirect(url);
%>