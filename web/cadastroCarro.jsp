<%-- 
    Document   : cadastroCarro
    Created on : 20/10/2018, 01:53
    Author     : Arthur
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroCarro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head lang="pt-br">
	<title>Cadastro de Veículos</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="reset.css">
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text|Montserrat|Raleway" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro de Veículos</h1>
        <main>
            <h2>Lista</h2>
            <a href="inserirCarro.jsp">Inserir Novo</a><hr/>
            <table border = 1>
                <tr>
                    <th>Placa</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Cor</th>
                </tr>
                <%for(CadastroCarro c: Db.getCadastroCarro()){%>
                <%int i = Db.getCadastroCarro().indexOf(c);%>
                <tr>
                    <td><%=i%></td>
                    <td><%=c.getPlaca()%></td>
                    <td><%=c.getMarca()%></td>
                    <td><%=c.getModelo()%></td>
                    <td><%=c.getCor()%></td>
                    <td>
                        <a href="alterarCarro.jsp?i=<%=i%>">
                            <button>Alterar</button>
                        </a>
                        <a href="excluirCarro.jsp?i=<%=i%>">
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
