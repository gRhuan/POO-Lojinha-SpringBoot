package com.trabalho.gerencia.repositories;

import com.trabalho.gerencia.models.Funcionario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FuncionariosRepository extends JpaRepository<Funcionario, Long> {
    
}