<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.UsuariosPessoas"%>
<%@page import="backenddm20231n.controller.ControllerUsuariosPessoas"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    UsuariosPessoas usuPes = new UsuariosPessoas(id);
    ControllerUsuariosPessoas usuPesCont = new ControllerUsuariosPessoas();
    usuPes = usuPesCont.excluir(usuPes);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoUsuarioPessoa.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

