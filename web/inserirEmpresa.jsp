<%-- 
    Document   : inserirEmpresa
    Created on : 18/10/2018, 20:59:39
    Author     : Lucas
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Nova Empresa</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        
            <%@include file="WEB-INF/jspf/header.jspf" %>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
            
            <div class="col-12 text-center">
                <h3 class="text-center pt-4">Inserir Nova Empresa</h3>
                <a href="cadastroEmpresa.jsp" class="btn btn-primary my-4">Lista de Empresas</a>
            </div>
                
    
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
                
                <div class="container py-5">
                     <div class="row">
                         <div class="col-12 text-center">
                <form>
                    <input type="text" placeholder="Nome Fantasia" name="nomeFantasia"/>
                    <input type="text" placeholder="Razão Social" name="razaoSocial"/>
                    <input type="text" placeholder="CNPJ" name="cnpj"/>
                    <input type="text" placeholder="Telefone" name="telefone"/>
                    <input type="text" placeholder="Web Site" name="webSite"/>
                    <input type="submit" name="inserir" value="inseir"/>
                </form>
                 </div>
            </div>
        </div>
                  
    </body>
       
       
	<%@include file="WEB-INF/jspf/footer.jspf"%>

</html>
