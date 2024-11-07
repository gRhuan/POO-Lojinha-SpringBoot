package com.trabalho.gerencia.dto;

import java.math.BigDecimal;

import com.trabalho.gerencia.models.Funcionario;


public class RequisicaoNovoFuncionario {

    private String nome;
    private String cpf;
    private String endereco;
    private String cidade;
    private String bairro;
    private BigDecimal salario;

    public Funcionario toFuncionario(){
        Funcionario funcionario = new Funcionario();
        funcionario.setNome(this.nome);
        funcionario.setEndereco(this.endereco);
        funcionario.setSalario(this.salario);
        funcionario.setBairro(this.bairro);
        funcionario.setCidade(this.cidade);
        funcionario.setCpf(this.cpf);
        return funcionario;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getEndereco() {
        return endereco;
    }
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    public String getCidade() {
        return cidade;
    }
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    public String getBairro() {
        return bairro;
    }
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
    public BigDecimal getSalario() {
        return salario;
    }
    public void setSalario(BigDecimal salario) {
        this.salario = salario;
    }

    
}
