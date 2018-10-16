<%-- 
    Document   : lista
    Created on : 06/10/2018, 08:52:08
    Author     : deaxa
--%>

<%@page import="br.com.fatec.web.Contato"%>
<%@page import="br.com.fatec.web.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    
        <h1>WebContatos</h1>
        <h2>Alterar</h2>
        
        <a href="lista.jsp">Lista</a><hr/>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Contato c = Db.getContatos().get(i);
            if(request.getParameter("alterar")!= null){
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                c.setDados(nome, email, telefone);
                Db.getContatos().set(i, c);
                response.sendRedirect("lista.jsp");
            }
        %>
        <form>
            <b>indice: <%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/><br/>
            Nome: <br/>
            <input type="text" name="nome" value="<%=c.getNome()%>"/><br/>
            Email: <br/>
            <input type="text" name="email" value="<%=c.getEmail()%>"/><br/>
            Telefone: <br/>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>"/><br/>
            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form>
        
         
</html>
