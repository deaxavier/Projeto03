<%-- 
    Document   : inserirCarro
    Created on : 20/10/2018, 02:06
    Author     : Arthur
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroCarro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head >
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Novo Veículo</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
             <%@include file="WEB-INF/jspf/header.jspf" %>
             <%@include file="WEB-INF/jspf/menu.jspf" %>
             
            <div class="col-12 text-center">
                <h3 class="text-center pt-4">Inserir Novo Veículo</h3>
                <a href="cadastroCarro.jsp" class="btn btn-primary my-4">Lista de Veículos</a>
            </div>
                
                
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
                
                 <div class="container py-5">
                     <div class="row">
                         <div class="col-12 text-center">
                <form>
                    <input type="text" placeholder="Placa" name="placa"/>
                    <input type="text" placeholder="Marca" name="marca"/>
                    <input type="text" placeholder="Modelo" name="modelo"/>
                    <input type="text" placeholder="Cor" name="cor"/>

                   <input type="submit" name="inserir" value="inserir"/>
                   
                </form>
                </div>
            </div>
        </div>
        
    </body>
       
<%@include file="WEB-INF/jspf/footer.jspf"%>

</html>
