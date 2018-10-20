<%-- 
    Document   : excluirEmpresa
    Created on : 18/10/2018, 20:53:12
    Author     : Lucas
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
         <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <div class="col-12 text-center">
        <h1>Excluir Empresa</h1>
        <h2>Excluir</h2>
        
        <a class="btn btn-primary" href="cadastroEmpresa.jsp">Lista de Empresas</a><hr/>
        
        </div>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroEmpresa empresa = Db.getCadastroEmpresa().get(i);
            if(request.getParameter("excluir")!= null){
                Db.getCadastroEmpresa().remove(i);
                response.sendRedirect("cadastroEmpresa.jsp");
            }
        %>
        
        <div class="container py-5">
                     <div class="row">
                         <div class="col-12 text-center">
                             
        <form>
            
            <input type="hidden" name="i" value="<%=i%>"/><br/>
            <p>Nome Fantasia: <b><%=empresa.getNomeFantasia()%></b><br/></p>
            <p>Razão Social: <b><%=empresa.getRazaoSocial()%></b><br/></p>
            <p>CNPJ: <b><%=empresa.getCnpj()%></b><br/></p>
            <p>Telefone: <b><%=empresa.getTelefone()%></b><br/></p>
            <p>Web Site: <b><%=empresa.getWebSite()%></b><br/></p>
            <br/><input class="btn btn-danger" type="submit" name="excluir" value="Confirmar Exclusão"/>
        </form><br>
        
               </div>
            </div>
        </div>
            
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
