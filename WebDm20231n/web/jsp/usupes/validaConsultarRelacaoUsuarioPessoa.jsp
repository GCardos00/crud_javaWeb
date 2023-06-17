<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.controller.ControllerUsuario"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>
<%@page import="backenddm20231n.model.bean.UsuariosPessoas"%>
<%@page import="backenddm20231n.controller.ControllerUsuariosPessoas"%>

<%
    String obs = request.getParameter("OBS");
    UsuariosPessoas usupes = new UsuariosPessoas(obs);
    ControllerUsuariosPessoas usupescont = new ControllerUsuariosPessoas();
    List<UsuariosPessoas> usupess = usupescont.listar(usupes);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + usupes.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdUsuPessoa">Id</th>
                  <th data-field="IdPessoa">IdPessoa</th>
                  <th data-field="NomePessoa">NomePessoa</th>
                  <th data-field="IdUsuario">IdUsuario</th>
                  <th data-field="NomeUsuario">NomeUsuario</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(usupess.isEmpty())) { %>    
                <tbody>
                    <% for (UsuariosPessoas listaUsuarioPessoa : usupess) { %>
                        <tr>
                            <td><%=listaUsuarioPessoa.getId()%></td>
                            <td><%=listaUsuarioPessoa.getIdPessoa()%></td>
                            <td><%=listaUsuarioPessoa.getPes().getNome()%></td>
                            <td><%=listaUsuarioPessoa.getIdUsuario()%></td>
                            <td><%=listaUsuarioPessoa.getUsu().getLogin()%></td>
                            <td><%=listaUsuarioPessoa.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoUsuarioPessoa.jsp?<%=url + listaUsuarioPessoa.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoUsuarioPessoa.jsp?<%=url + listaUsuarioPessoa.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>