<%@page import="backenddm20231n.controller.ControllerConta"%>
<%@page import="backenddm20231n.model.bean.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="java.util.List"%>

<%
    String nomeconta = request.getParameter("NOMECONTA");
    Conta res = new Conta(nomeconta);
    ControllerConta resCont = new ControllerConta();
    List<Conta> ress = resCont.listar(res);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nomeconta +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTA</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Banco">Banco</th>
                  <th data-field="Valor">Valor</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(ress.isEmpty())) { %>    
                <tbody>
                    <% for (Conta listaConta : ress) { %>
                        <tr>
                            <td><%=listaConta.getId()%></td>
                            <td><%=listaConta.getNomeConta()%></td>
                            <td><%=listaConta.getBanco()%></td>
                            <td><%=listaConta.getValor()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirConta.jsp?<%=url + listaConta.getId()%>">Excluir</a></td>
                                <td><a href="alterarConta.jsp?<%=url + listaConta.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>