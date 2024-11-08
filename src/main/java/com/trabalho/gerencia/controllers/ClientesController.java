package com.trabalho.gerencia.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.trabalho.gerencia.dto.RequisicaoNovoCliente;
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
    public String criar(RequisicaoNovoCliente requisicao) {
        Cliente cliente = requisicao.toClientes();
        this.clientesRepository.save(cliente);
        return "redirect:/funcionarios";
    }

    @PostMapping("/clientes/atualizar/{id}")
    public String updateCliente(@PathVariable Long id, @RequestBody RequisicaoNovoCliente requisicao) {
        // Busca o cliente existente pelo ID
        Cliente clienteExistente = clientesRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Cliente não encontrado: " + id));

        // Atualiza os dados do cliente com as informações da requisição
        clienteExistente.setNome(requisicao.getNome());
        clienteExistente.setCpf(requisicao.getCpf());
        clienteExistente.setEndereco(requisicao.getEndereco());
        clienteExistente.setCidade(requisicao.getCidade());
        clienteExistente.setBairro(requisicao.getBairro());
        clienteExistente.setUf(requisicao.getUf());

        // Salva as mudanças no banco de dados
        clientesRepository.save(clienteExistente);

        return "redirect:/clientes";
    }

}
