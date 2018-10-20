<%-- 
    Document   : home
    Created on : 08/10/2018, 11:30:36
    Author     : deaxa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="pt-br">
	<title>Projeto 3 - P.O.O</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
	<meta charset="utf-8">
	
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
            <h1>Projeto 3 - Cadastro</h1>
            <div>
                <p class="text-center font-weight-bold h3 pb-3">Projeto de Programacao Orientada a Objetos</p>
                <h2 class="text-center h1">Integrantes</h2>
                    
                    <ul class="pb-5">
                            <li class="text-center h4">Andrea Xavier</li>
                            <li class="text-center h4">Arthur de la Mano</li>
                            <li class="text-center h4">Lucas Martins</li>
                            <li class="text-center h4">Victoria Rodovalho</li>
                    </ul>
                                    
                    <h3 class="text-center pb-2">Finalidade</h3>
                   
                        <ul>
                            <li class="text-center">
				Pagina de manutencao para <strong>cadastro de pessoas</strong>  contendo nome, CPF, e-mail e telefone.
                            </li>

                            <li class="text-center">
				Pagina de manutencao para <strong>cadastro de empresas</strong> contendo nome, CNPJ, razao social, telefone e website.
                            </li>

                            <li class="text-center">
				Pagina de manutencao <strong>para cadastro de veiculos</strong> contento placa, marca, modelo e cor.
                            </li>
                        </ul>
                    
            </div><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
    
</html>
