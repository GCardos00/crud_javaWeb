<%@page import="backenddm20231n.model.bean.Conta"%>
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

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR PESSOA CONTA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Pessoa Conta</h1>
            <form name="inserirPessoaConta" action="validaRelacaoPessoaConta.jsp" method="POST">
                <table>
                    <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="IDP" class="browser-default">
                                <% for (Pessoa pes : pess) { %>
                                    <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="IDC" class="browser-default">
                                <% for (Conta res : rese) { %>
                                    <option value="<%=res.getId()%>"><%=res.getNomeConta()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
