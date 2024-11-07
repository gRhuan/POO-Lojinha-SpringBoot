package com.trabalho.gerencia.controllers;

import com.trabalho.gerencia.dto.RequisicaoNovoProduto;
import com.trabalho.gerencia.models.Produto;
import com.trabalho.gerencia.repositories.ProdutosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class ProdutosController {
    
    @Autowired
    private ProdutosRepository produtosRepository;

    @GetMapping("/api/produtos")
    public List<Produto> getAllProdutos() {
        return produtosRepository.findAll();
    }

    @GetMapping("/produtos")
    public ModelAndView index() {
        List<Produto> produtos = this.getAllProdutos();
        ModelAndView mv = new ModelAndView("produtos/index");
        mv.addObject("produtos", produtos);
        return mv;
    }

    @GetMapping("/produtos/adicionar")
    public String criar(RequisicaoNovoProduto requisicao) {
        Produto produto = requisicao.toProduto();
        this.produtosRepository.save(produto);
        return "redirect:/produtos";
    }
   
}

