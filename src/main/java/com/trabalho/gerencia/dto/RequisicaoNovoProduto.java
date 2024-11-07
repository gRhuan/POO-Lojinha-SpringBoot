package com.trabalho.gerencia.dto;

import java.math.BigDecimal;

import com.trabalho.gerencia.models.Produto;

public class RequisicaoNovoProduto {
    private String nome;
    private int estoque;
    private BigDecimal valor;

    public Produto toProduto(){
        Produto produto = new Produto();
        produto.setNome(this.nome);
        produto.setEstoque(this.estoque);
        produto.setValor(this.valor);
        return produto;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public int getEstoque() {
        return estoque;
    }
    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }
    public BigDecimal getValor() {
        return valor;
    }
    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }
    
}
