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
        <title>Inserir Nova Pessoa</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <div class="col-12 text-center">
              <h2 class="text-center pt-4">Inserir Nova Pessoa</h2>
        
        <a href="cadastroPessoa.jsp" class="btn btn-primary my-4">Lista de Pessoas</a>
        </div>
        
        
            
       
      
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
        
       <div class="container py-5">
            <div class="row">
                <div class="col-12 text-center">
                    
         
        
        <form>
            <input type="text" placeholder="Nome" name="nome"/>
            <input type="text" placeholder="CPF" name="cpf"/>
            <input type="text" placeholder="E-mail" name="email"/>
            <input type="text" placeholder="Telefone" name="telefone"/>
            <input type="submit" name="inserir" value="inserir"/>
        </form>
                  </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
        
        
         
</html>
