package com.trabalho.gerencia.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.trabalho.gerencia.models.Cliente;
import com.trabalho.gerencia.repositories.ClientesRepository;

@Controller
public class ClientesController {
    @Autowired
    private ClientesRepository clientesRepository;

    @GetMapping("/api/clientes")
    public List<Cliente> getAllClientes() {
        return clientesRepository.findAll();
    }
    
    @GetMapping("/clientes")
    public ModelAndView index() {
        List<Cliente> clientes = this.getAllClientes();
        ModelAndView mv = new ModelAndView("clientes/index");
        mv.addObject("clientes", clientes);
        return mv;
    }

    @GetMapping("/clientes/adicionar")
    public ModelAndView novo() {
        ModelAndView mv = new ModelAndView("clientes/adicionar");
        return mv;
    }

   
}
