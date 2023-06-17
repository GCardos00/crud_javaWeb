<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddm20231n.model.bean.Usuario"%>
<%@page import="backenddm20231n.controller.ControllerUsuario"%>
<%@page import="backenddm20231n.model.bean.Pessoa"%>
<%@page import="backenddm20231n.controller.ControllerPessoa"%>
<%@page import="backenddm20231n.model.bean.UsuariosPessoas"%>
<%@page import="backenddm20231n.controller.ControllerUsuariosPessoas"%>

<%
    ControllerPessoa pesCont = new ControllerPessoa();
    Pessoa pf = new Pessoa("");
    List<Pessoa> pess = pesCont.listar(pf);

    ControllerUsuario usuCont = new ControllerUsuario();
    Usuario usuEnt = new Usuario("");
    List<Usuario> usus = usuCont.listar(usuEnt);

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR USUARIO PESSOA</title>
    <body>
        <div class="container"/>
            <h1>Inserir Usuario Pessoa</h1>
            <form name="inseriUsuarioPessoa" action="validaRelacaoUsuarioPessoa.jsp" method="POST">
                <table>
                    <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PESSOA" class="browser-default">
                                <% for (Pessoa pes : pess) { %>
                                    <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                                <% for (Usuario usu : usus) { %>
                                    <option value="<%=usu.getId()%>"><%=usu.getLogin()%></option>
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
