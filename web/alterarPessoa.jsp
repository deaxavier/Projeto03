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
        <title>Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <div class="col-12 text-center">
            <h1>Alterar dados</h1>
            <h2>Alterar</h2>
            <a class="btn btn-primary" href="cadastroPessoa.jsp">Lista de pessoas</a><hr/>
        </div>
        
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroPessoa c = Db.getCadastroPessoa().get(i);
            try{
                if(request.getParameter("alterar")!= null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                c.setDadosPessoa(nome, cpf, email, telefone);
                Db.getCadastroPessoa().set(i, c);
                response.sendRedirect("cadastroPessoa.jsp");
                }
            }catch(Exception ex){
                out.println("Dados Invalidos");
            }
            
        %>
        
        <div class="container py-5">
                     <div class="row">
                         <div class="col-12 text-center">
        <form>
 
            <input type="hidden" name="i" value="<%=i%>"/>
            <b>Nome:</b><br>
            <input type="text" name="nome" value="<%=c.getNome()%>"/><br>
            <b>CPF:</b><br>
            <input type="text" name="cpf" value="<%=c.getCpf()%>"/><br>
            <b>e-mail:</b><br>
            <input type="text" name="email" value="<%=c.getEmail()%>"/><br>
            <b>Telefone:</b><br>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>"/><br>
            
            <br>
            
            <input type="submit" name="alterar" value="Alterar"/>
        </form>
        
                 </div>
            </div>
        </div>
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
        
        
         
</html>
