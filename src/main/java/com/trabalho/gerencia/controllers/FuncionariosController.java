package com.trabalho.gerencia.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trabalho.gerencia.dto.RequisicaoNovoFuncionario;
import com.trabalho.gerencia.models.Funcionario;
import com.trabalho.gerencia.repositories.FuncionariosRepository;

@Controller
@RequestMapping("/funcionarios")
public class FuncionariosController {

    @Autowired
    private FuncionariosRepository funcionariosRepository;

    @GetMapping("/api/funcionarios")
    public List<Funcionario> getAllFuncionarios() {
        return funcionariosRepository.findAll();
    }

    @GetMapping
    public ModelAndView index() {
        List<Funcionario> funcionarios = this.getAllFuncionarios();
        ModelAndView mv = new ModelAndView("funcionarios/index");
        mv.addObject("funcionarios", funcionarios);
        return mv;
    }

    @GetMapping("/funcionarios/adicionar")
    public String criar(RequisicaoNovoFuncionario requisicao) {
        Funcionario funcionario = requisicao.toFuncionario();
        this.funcionariosRepository.save(funcionario);
        return "redirect:/funcionarios";
    }


}


