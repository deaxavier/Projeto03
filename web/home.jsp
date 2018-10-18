<%-- 
    Document   : home
    Created on : 08/10/2018, 11:30:36
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head lang="pt-br">
	    <title>Projeto 3 - P.O.O</title>
            <%@include file="WEB-INF/jspf/head.jspf"%>
	    <meta charset="utf-8">
	    <link rel="stylesheet" type="text/css" href="WEB-INF/css/reset.css">
	    <link rel="stylesheet" type="text/css" href="WEB-INF/css/estilo.css">
	    <link href="https://fonts.googleapis.com/css?family=Crimson+Text|Montserrat|Raleway" rel="stylesheet">
	</head>
	<body>
	   <main>
		<h1>Projeto 3 - Cadastro</h1>
		<div>
		    <p>Projeto de Programacao Orientada a Objetos</p>
                    <h2>Integrantes</h2>
			<p>
			   <ul>
                 		<li>Andrea Xavier</li>
                 		<li>Arthur de la Mano</li>
                 		<li>Lucas Martins</li>
                 		<li>Victoria Rodovalho</li>
            		    </ul>
         		</p>

		    <h3>Finalidade</h3>
			<p>
		            <ul>
				<li>
				   Pagina de manutencao para <strong>cadastro de pessoas</strong>  contendo nome, CPF, e-mail e telefone.
				</li>

				<li>
				   Pagina de manutencao para <strong>cadastro de empresas</strong> contendo nome, CNPJ, razao social, telefone e website.
				</li>

				<li>
				   Pagina de manutencao <strong>para cadastro de veiculos</strong> contento placa, marca, modelo e cor.
				</li>
			    </ul>
			</p>
		</div>
	   </main>
	</body>
	<aside>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        </aside>
	<footer>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
	</footer>
</html>
