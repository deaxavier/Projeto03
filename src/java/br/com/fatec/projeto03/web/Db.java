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
            
         
        }
        return cadastroPessoa;
    }
    
    public static ArrayList<CadastroEmpresa> getCadastroEmpresa(){
        if(cadastroEmpresa == null){
            cadastroEmpresa = new ArrayList<>();
         
        }
        return cadastroEmpresa;
    }
    
    public static ArrayList<CadastroCarro> getCadastroCarro(){
        if(cadastroCarro == null){
            cadastroCarro = new ArrayList<>();
        
        }
        return cadastroCarro;
    }
    
}
