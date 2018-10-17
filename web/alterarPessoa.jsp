<%-- 
    Document   : lista
    Created on : 06/10/2018, 08:52:08
    Author     : deaxa
--%>


<%@page import="br.com.fatec.projeto03.web.Db"%>
<%@page import="br.com.fatec.projeto03.web.CadastroPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Alterar dados</h1>
        <h2>Alterar</h2>
        
        <a href="cadastroPessoa.jsp">Lista de pessoas</a><hr/>
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
        <form>
            <b>indice: <%=i%></b><br>
            <input type="hidden" name="i" value="<%=i%>"/>
            <b>Nome:</b>
            <input type="text" name="nome" value="<%=c.getNome()%>"/>
            <b>CPF:</b>
            <input type="text" name="cpf" value="<%=c.getCpf()%>"/>
            <b>e-mail:</b>
            <input type="text" name="email" value="<%=c.getEmail()%>"/>
            <b>Telefone:</b>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>"/><br/>
            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
        
        
         
</html>
