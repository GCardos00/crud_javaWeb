<%@page import="backenddm20231n.controller.ControllerPessoasContas"%>
<%@page import="backenddm20231n.model.bean.Conta"%>
<%@page import="backenddm20231n.model.bean.PessoasContas"%>
<%@page import="backenddm20231n.controller.ControllerConta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>

<%
    ControllerPessoa pesCont = new ControllerPessoa();
    Pessoa pesEnt = new Pessoa("");
    List<Pessoa> pess = pesCont.listar(pesEnt);

    ControllerConta resCont = new ControllerConta();
    Conta resEnt = new Conta("");
    List<Conta> rese = resCont.listar(resEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PessoasContas resPes = new PessoasContas(id);
    ControllerPessoasContas resPesCont = new ControllerPessoasContas();
    resPes = resPesCont.buscar(resPes);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PESSOA CONTA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - PESSOA CONTA</h1>
        <form name="alterarPessoaConta" action="validaAlterarRelacaoPessoaConta.jsp" method="post">
            <table>
                <tr>
                    <td>Conta</td>
                        <td>
                            <select NAME="IDC" class="browser-default">
                                <% for (Conta res : rese) { %>
                                    <% if( res.getId() == resPes.getIdC()) { %>
                                        <option selected value="<%=res.getId()%>"><%=res.getNomeConta()%></option>
                                    <% } else { %>
                                        <option value="<%=res.getId()%>"><%=res.getNomeConta()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="IDP" class="browser-default">
                                <% for (Pessoa pes : pess) { %>
                                    <% if( pes.getId()== resPes.getIdP()) { %>
                                        <option selected value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=resPes.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=resPes.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>