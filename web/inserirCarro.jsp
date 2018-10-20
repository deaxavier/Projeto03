<%-- 
    Document   : inserirCarro
    Created on : 20/10/2018, 02:06
    Author     : Arthur
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroCarro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="pt-br">
	<title>Projeto 3 - P.O.O</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <main>
            <%@include file="WEB-INF/jspf/header.jspf"%>
            <div>
                <h2>Cadastro Veículo</h2>
                <h3>Inserir Novo Veículo</h3>

                <a href="cadastroCarro.jsp">Lista de Veículos</a><hr/>
                <%
                    try{
                        if(request.getParameter("inserir")!= null){
                        String placa = request.getParameter("placa");
                        String marca = request.getParameter("marca");
                        String modelo = request.getParameter("modelo");
                        String cor = request.getParameter("cor");

                        CadastroCarro carro = new CadastroCarro();
                        carro.setDadosCarro(placa, marca, modelo, cor);
                        Db.getCadastroCarro().add(carro);
                        response.sendRedirect("cadastroCarro.jsp");
                    }
                    }catch(Exception ex){
                        out.println("Dados Inválidos");
                    }

                %>
                <form>
                    <input type="text" placeholder="Placa" name="placa"/><br>
                    <input type="text" placeholder="Marca" name="marca"/><br>
                    <input type="text" placeholder="Modelo" name="modelo"/><br>
                    <input type="text" placeholder="Cor" name="cor"/><br>

                    <br/><input type="submit" name="inserir" value="inserir"/><br>
                </form>
            </div>
        </main>
    </body>
       
        <%@include file="WEB-INF/jspf/menu.jspf"%>
	<%@include file="WEB-INF/jspf/footer.jspf"%>

</html>
