<%-- 
    Document   : inserirEmpresa
    Created on : 18/10/2018, 20:59:39
    Author     : Lucas
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroEmpresa"%>
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
                <h2>Cadastro Empresa</h2>
                <h3>Inserir Nova Empresa</h3>

                <a href="cadastroEmpresa.jsp">Lista de Empresas</a><hr/>
                <%
                    try{
                        if(request.getParameter("inserir")!= null){
                        String nomeFantasia = request.getParameter("nomeFantasia");
                        String razaoSocial = request.getParameter("razaoSocial");
                        String cnpj = request.getParameter("cnpj");
                        String telefone = request.getParameter("telefone");
                        String webSite = request.getParameter("webSite");
                        CadastroEmpresa empresa = new CadastroEmpresa();
                        empresa.setDadosEmpresa(nomeFantasia, razaoSocial, cnpj, telefone, webSite);
                        Db.getCadastroEmpresa().add(empresa);
                        response.sendRedirect("cadastroEmpresa.jsp");
                    }
                    }catch(Exception ex){
                        out.println("Dados Inválidos");
                    }

                %>
                <form>
                    <input type="text" placeholder="Nome Fantasia" name="nomeFantasia"/><br>
                    <input type="text" placeholder="Razão Social" name="razaoSocial"/><br>
                    <input type="text" placeholder="CNPJ" name="cnpj"/><br>
                    <input type="text" placeholder="Telefone" name="telefone"/><br>
                    <input type="text" placeholder="Web Site" name="webSite"/><br>
                    <br/><input type="submit" name="inserir" value="inseir"/><br>
                </form>
            </div>
        </main>
    </body>
       
        <%@include file="WEB-INF/jspf/menu.jspf"%>
	<%@include file="WEB-INF/jspf/footer.jspf"%>

</html>
