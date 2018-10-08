/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.projeto03.web;

import java.util.ArrayList;

/**
 *
 * @author deaxa
 */
public class Db {
    private static ArrayList<CadastroPessoa> cadastroPessoa;
    private static ArrayList<CadastroEmpresa> cadastroEmpresa;
    private static ArrayList<CadastroCarro> cadastroCarro;
    
    public static ArrayList<CadastroPessoa> getCadastroPessoa(){
        if(cadastroPessoa == null){
            cadastroPessoa = new ArrayList<>();
            
            CadastroPessoa p1 = new CadastroPessoa();
            p1.setDadosPessoa("João", "11122233344", "joao@site.com", "18991110001");
            cadastroPessoa.add(p1);
            CadastroPessoa p2 = new CadastroPessoa();
            p2.setDadosPessoa("Pedro", "11122233344", "pedro@site.com", "18991110002");
            cadastroPessoa.add(p2);
            CadastroPessoa p3 = new CadastroPessoa();
            p3.setDadosPessoa("José", "11122233344", "jose@site.com", "18991110003");
            cadastroPessoa.add(p3);
        }
        return cadastroPessoa;
    }
    
    public static ArrayList<CadastroEmpresa> getCadastroEmpresa(){
        if(cadastroEmpresa == null){
            cadastroEmpresa = new ArrayList<>();
            
            CadastroEmpresa e1 = new CadastroEmpresa();
            e1.setDadosEmpresa("João", "João da Silva SA", "11122233344", "18991110001", "www.site.com");
            cadastroEmpresa.add(e1);
            CadastroEmpresa e2 = new CadastroEmpresa();
            e2.setDadosEmpresa("Pedro", "Pedro da Silva SA", "12123234345", "18991110002", "www.site.com");
            cadastroEmpresa.add(e2);
            CadastroEmpresa e3 = new CadastroEmpresa();
            e3.setDadosEmpresa("José", "José da Silva SA", "13124235346", "18991110003", "www.site.com");
            cadastroEmpresa.add(e3);
        }
        return cadastroEmpresa;
    }
    
    public static ArrayList<CadastroCarro> getCadastroCarro(){
        if(cadastroEmpresa == null){
            cadastroEmpresa = new ArrayList<>();
            
            CadastroCarro c1 = new CadastroCarro();
            c1.setDadosCarro("ABC1234", "Carro1", "modelo1", "Cor1");
            cadastroCarro.add(c1);
            CadastroCarro c2 = new CadastroCarro();
            c2.setDadosCarro("BCD1234", "Carro2", "modelo2", "Cor2");
            cadastroCarro.add(c2);
            CadastroCarro c3 = new CadastroCarro();
            c3.setDadosCarro("CDE1234", "Carro3", "modelo3", "Cor3");
            cadastroCarro.add(c3);
        }
        return cadastroCarro;
    }
    
}
