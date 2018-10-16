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
        <title>Inserir Nova Pessoa</title>
    </head>
    
        <h1>Cadastro Pessoa</h1>
        <h2>Insrir Nova Pessoa</h2>
        
        <a href="cadastroPessoa.jsp">Lista de Pessoas</a><hr/>
        <%
            try{
                if(request.getParameter("inserir")!= null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                CadastroPessoa c = new CadastroPessoa();
                c.setDadosPessoa(nome, cpf, email, telefone);
                Db.getCadastroPessoa().add(c);
                response.sendRedirect("cadastroPessoa.jsp");
            }
            }catch(Exception ex){
                out.println("Dados Inválidos");
            }
            
        %>
        <form>
            <input type="text" placeholder="Nome" name="nome"/>
            <input type="text" placeholder="CPF" name="cpf"/>
            <input type="text" placeholder="E-mail" name="email"/>
            <input type="text" placeholder="Telefone" name="telefone"/>
            <br/><input type="submit" name="inserir" value="inseir"/>
        </form>
        
         
</html>
