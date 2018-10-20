<%-- 
    Document   : alterarEmpresa
    Created on : 18/10/2018, 20:27:48
    Author     : Lucas
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <div class="col-12 text-center">
            <h1>Alterar Dados</h1>
            <h2>Alterar</h2>
            <a class="btn btn-primary" href="cadastroEmpresa.jsp">Lista de Empresas</a><hr/>
        </div>
        
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroEmpresa empresa = Db.getCadastroEmpresa().get(i);
            try{
                if(request.getParameter("alterar")!= null){
                String nomeFantasia = request.getParameter("nomeFantasia");
                String razaoSocial = request.getParameter("razaoSocial");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("telefone");
                String webSite = request.getParameter("webSite");
                empresa.setDadosEmpresa(nomeFantasia, razaoSocial, cnpj, telefone, webSite);
                Db.getCadastroEmpresa().set(i, empresa);
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
            
            <input type="hidden" name="i" value="<%=i%>"/>
            <b>Nome Fantasia:</b><br>
            <input type="text" name="nomeFantasia" value="<%=empresa.getNomeFantasia()%>"/><br>
            <b>Razão Social:</b><br>
            <input type="text" name="razaoSocial" value="<%=empresa.getRazaoSocial()%>"/><br>
            <b>CNPJ:</b><br>
            <input type="text" name="cnpj" value="<%=empresa.getCnpj()%>"/><br>
            <b>Telefone:</b><br>
            <input type="text" name="telefone" value="<%=empresa.getTelefone()%>"/><br>
            <b>Web Site:</b><br>
            <input type="text" name="webSite" value="<%=empresa.getWebSite()%>"/><br>
            <input type="submit" name="alterar" value="Alterar"/>
        </form>
        
            </div>
            </div>
        </div>
            
            
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
        
        
         
</html>
