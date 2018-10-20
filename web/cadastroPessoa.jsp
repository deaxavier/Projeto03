<%-- 
    Document   : cadastroPessoa
    Created on : 16/10/2018, 17:26:48
    Author     : deaxa
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="pt-br">
    <head>
	<title>Cadastro de Pessoas</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
	<meta charset="utf-8">

    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro de Clientes</h1>
        <main>
            <div class="col-12 text-center">
            <h2>Lista</h2>
            <a class="btn btn-primary" href="inserirPessoa.jsp">Inserir Novo</a>
            </div>
            
            <div class="container py-5">
            <table class="table table-dark">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>e-mail</th>
                    <th>Telefone</th>
                    <th>Comandos</th>
                </tr>
                <%for(CadastroPessoa c: Db.getCadastroPessoa()){%>
                <%int i = Db.getCadastroPessoa().indexOf(c);%>
                <tr>
                    <td><%=i%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getCpf()%></td>
                    <td><%=c.getEmail()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td>
                        <a class="btn btn-primary" href="alterarPessoa.jsp?i=<%=i%>">
                            Alterar
                        </a>
                        <a class="btn btn-danger" href="excluirPessoa.jsp?i=<%=i%>">
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
