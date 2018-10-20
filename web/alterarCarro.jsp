<%-- 
    Document   : alterarEmpresa
    Created on : 18/10/2018, 20:27:48
    Author     : Lucas
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroEmpresa"%>
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
        
        <a href="cadastroEmpresa.jsp">Lista de Empresas</a><hr/>
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
        <form>
            <b>Índice: <%=i%></b><br>
            <input type="hidden" name="i" value="<%=i%>"/>
            <b>Nome Fantasia:</b>
            <input type="text" name="nomeFantasia" value="<%=empresa.getNomeFantasia()%>"/>
            <b>Razão Social:</b>
            <input type="text" name="razaoSocial" value="<%=empresa.getRazaoSocial()%>"/>
            <b>CNPJ:</b>
            <input type="text" name="cnpj" value="<%=empresa.getCnpj()%>"/>
            <b>Telefone:</b>
            <input type="text" name="telefone" value="<%=empresa.getTelefone()%>"/><br/>
            <b>Web Site:</b>
            <input type="text" name="webSite" value="<%=empresa.getWebSite()%>"/><br/>
            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
        
        
         
</html>
