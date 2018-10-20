<%-- 
    Document   : excluirCarro
    Created on : 19/10/2018, 20:53:12
    Author     : Arthur
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroCarro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
         <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Excluir Veículo</h1>
        <h2>Excluir</h2>
        
        <a href="cadastroCarro.jsp">Lista de Veículos</a><hr/>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroCarro carro = Db.getCadastroCarro().get(i);
            if(request.getParameter("excluir")!= null){
                Db.getCadastroCarro().remove(i);
                response.sendRedirect("cadastroCarro.jsp");
            }
        %>
        <form>
            <b>Índice: <%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/><br/>
            <p>Placa: <b><%=carro.getPlaca()%></b><br/></p>
            <p>Marca: <b><%=carro.getMarca()%></b><br/></p>
            <p>Modelo: <b><%=carro.getModelo()%></b><br/></p>
            <p>Cor: <b><%=carro.getCor()%></b><br/></p>
           
            <br/><input type="submit" name="excluir" value="Confirmar Exclusão"/>
        </form><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
