package com.trabalho.gerencia.dto;

import com.trabalho.gerencia.models.Cliente;

public class RequisicaoNovoCliente {

    private String nome;
    private String cpf;
    private String endereco;
    private String cidade;
    private String bairro;
    private String uf;

    public Cliente toClientes() {
        Cliente clientes = new Cliente();
        clientes.setNome(this.nome);
        clientes.setEndereco(this.endereco);
        clientes.setBairro(this.bairro);
        clientes.setCidade(this.cidade);
        clientes.setUf(this.uf);
        clientes.setCpf(this.cpf);
        return clientes;
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

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

}
