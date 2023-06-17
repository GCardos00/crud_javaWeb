<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.controller.ControllerPessoasContas"%>
<%@page import="backenddm20231n.model.bean.PessoasContas"%>
<%@page import="backenddm20231n.model.bean.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>


<%
    String obs = request.getParameter("OBS");
    PessoasContas respes = new PessoasContas(obs);
    ControllerPessoasContas respescont = new ControllerPessoasContas();
    List<PessoasContas> respess = respescont.listar(respes);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + respes.getObs()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA RESERVAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdPessoaConta">IdPessoaReserva</th>
                  <th data-field="IdPessoa">IdPessoa</th>
                  <th data-field="NomePessoa">NomePessoa</th>
                  <th data-field="IdConta">IdReserva</th>
                  <th data-field="NomeConta">NomeConta</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(respess.isEmpty())) { %>    
                <tbody>
                    <% for (PessoasContas listaPessoasContas : respess) { %>
                        <tr>
                            <td><%=listaPessoasContas.getId()%></td>
                            <td><%=listaPessoasContas.getIdP()%></td>
                            <td><%=listaPessoasContas.getP().getNome()%></td>
                            <td><%=listaPessoasContas.getIdC()%></td>
                            <td><%=listaPessoasContas.getC().getNomeConta()%></td>
                            <td><%=listaPessoasContas.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoPessoaConta.jsp?<%=url + listaPessoasContas.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoPessoaConta.jsp?<%=url + listaPessoasContas.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>