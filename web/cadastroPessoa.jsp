<%-- 
    Document   : cadastroPessoa
    Created on : 16/10/2018, 17:26:48
    Author     : deaxa
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head lang="pt-br">
	<title>Cadastro de Pessoas</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="reset.css">
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text|Montserrat|Raleway" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro de Clientes</h1>
        <main>
            <h2>Lista</h2>
            <a href="inserirPessoa.jsp">Inserir Novo</a><hr/>
            <table border = 1>
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
                        <a href="alterarPessoa.jsp?i=<%=i%>">
                            <button>Alterar</button>
                        </a>
                        <a href="excluir.jsp?i=<%=i%>">
                            <button>Excluir</button>
                        </a>
                    </td>
                </tr>
                <%}%>
            </table>
        </main><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>      
</html>
