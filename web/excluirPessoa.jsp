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
        <title>Excluir</title>
    </head>
    
        <h1>WebContatos</h1>
        <h2>Excluir</h2>
        
        <a href="lista.jsp">Lista</a><hr/>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Contato c = Db.getContatos().get(i);
            if(request.getParameter("excluir")!= null){
                Db.getContatos().remove(i);
                response.sendRedirect("lista.jsp");
            }
        %>
        <form>
            <b>indice: <%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/><br/>
            Nome: <br/>
            <b><%=c.getNome()%></b><br/>
            Email: <br/>
            <b><%=c.getEmail()%></b><br/>
            Telefone: <br/>
            <b><%=c.getTelefone()%></b><br/>
            <br/><input type="submit" name="excluir" value="Confirmar Exclusão"/>
        </form>
        
         
</html>
