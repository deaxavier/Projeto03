<%-- 
    Document   : lista
    Created on : 06/10/2018, 08:52:08
    Author     : deaxa
--%>

<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroPessoa"%>
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
        <h1>Excluir Pessoa</h1>
        <h2>Excluir</h2>
        
        <a class="btn btn-primary"  href="cadastroPessoa.jsp">Lista de Pessoas</a><hr/>
        </div>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroPessoa c = Db.getCadastroPessoa().get(i);
            if(request.getParameter("excluir")!= null){
                Db.getCadastroPessoa().remove(i);
                response.sendRedirect("cadastroPessoa.jsp");
            }
        %>
        
         <div class="container py-5">
                     <div class="row">
                         <div class="col-12 text-center">
        <form>
        
            <input type="hidden" name="i" value="<%=i%>"/><br/>
            <p>Nome: <b><%=c.getNome()%></b><br/></p>
            <p>CPF: <b><%=c.getCpf()%></b><br/></p>
            <p>Email: <b><%=c.getEmail()%></b><br/></p>
            <p>Telefone: <b><%=c.getTelefone()%></b><br/></p>
            <br/><input class="btn btn-danger" type="submit" name="excluir" value="Confirmar Exclusão"/>
        </form><br>
        
                 </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
