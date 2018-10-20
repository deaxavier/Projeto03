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

    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro de Veículos</h1>
        <main>
            <div class="col-12 text-center">
                <h2>Lista</h2>
                <a class="btn btn-primary" href="inserirCarro.jsp">Inserir Novo</a>              
            </div>

            <div class="container py-5">
            <table class="table table-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Placa</th>
                    <th scope="col">Marca</th>
                    <th scope="col">Modelo</th>
                    <th scope="col">Cor</th>
                </tr>
                <%for(CadastroCarro c: Db.getCadastroCarro()){%>
                <%int i = Db.getCadastroCarro().indexOf(c);%>
                <tr>
                    <td scope="row"><%=i%></td>
                    <td><%=c.getPlaca()%></td>
                    <td><%=c.getMarca()%></td>
                    <td><%=c.getModelo()%></td>
                    <td><%=c.getCor()%></td>
                    <td>
                        <a class="btn btn-primary" href="alterarCarro.jsp?i=<%=i%>">
                            Alterar
                        </a>
                        <a class="btn btn-danger" href="excluirCarro.jsp?i=<%=i%>">
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
