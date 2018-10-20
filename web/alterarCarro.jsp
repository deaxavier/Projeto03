<%-- 
    Document   : alterarCarro
    Created on : 20/10/2018, 20:27:48
    Author     : Arthur
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroCarro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Alterar Dados</h1>
        <h2>Alterar</h2>
        
        <a href="cadastroCarro.jsp">Lista de Veículos</a><hr/>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroCarro carro = Db.getCadastroCarro().get(i);
            try{
                if(request.getParameter("alterar")!= null){
                String placa = request.getParameter("placa");
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String cor = request.getParameter("cor");
                
                carro.setDadosCarro (placa, marca, modelo, cor);
                Db.getCadastroCarro ().set(i, carro);
                response.sendRedirect("cadastroCarro.jsp");
                }
            }catch(Exception ex){
                out.println("Dados Inválidos");
            }
            
        %>
        <form>
            <b>Índice: <%=i%></b><br>
            <input type="hidden" name="i" value="<%=i%>"/>
            <b>Placa:</b>
            <input type="text" name="placa" value="<%=carro.getPlaca()%>"/>
            <b>Marca:</b>
            <input type="text" name="marca" value="<%=carro.getMarca()%>"/>
            <b>Modelo:</b>
            <input type="text" name="modelo" value="<%=carro.getModelo()%>"/>
            <b>Cor:</b>
            <input type="text" name="cor" value="<%=carro.getCor()%>"/><br/>

            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
        
        
         
</html>
