<%-- 
    Document   : cadastroEmpresa
    Created on : 18/10/2018, 20:40:42
    Author     : Lucas
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head lang="pt-br">
	<title>Cadastro de Empresas</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
	<meta charset="utf-8">

    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro de Empresas</h1>
        <main>
            <div class="col-12 text-center">
            <h2>Lista</h2>
            <a class="btn btn-primary" href="inserirEmpresa.jsp">Inserir Novo</a>
            </div>
            
            <div class="container py-5">
            <table class="table table-dark">
                <tr>
                    <th>ID</th>
                    <th>Nome Fantasia</th>
                    <th>Razão Social</th>
                    <th>CNPJ</th>
                    <th>Telefone</th>
                    <th>Web Site</th>
                    <th>Comandos</th>
                </tr>
                <%for(CadastroEmpresa empresa: Db.getCadastroEmpresa()){%>
                <%int i = Db.getCadastroEmpresa().indexOf(empresa);%>
                <tr>
                    <td><%=i%></td>
                    <td><%=empresa.getNomeFantasia()%></td>
                    <td><%=empresa.getRazaoSocial()%></td>
                    <td><%=empresa.getCnpj()%></td>
                    <td><%=empresa.getTelefone()%></td>
                    <td><%=empresa.getWebSite()%></td>
                    <td>
                        <a class="btn btn-primary" href="alterarEmpresa.jsp?i=<%=i%>">
                            Alterar
                        </a>
                        <a class="btn btn-danger" href="excluirEmpresa.jsp?i=<%=i%>">
                            Excluir
                        </a>
                    </td>
                </tr>
                <%}%>
            </table>
            </div>
        </main><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>      
</html>
