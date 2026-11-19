package com.example.despesas;

import java.time.LocalDate;

public class DinheiroDespesa extends Despesas {
    int id;
    String nome;
    String descricao;
    Double limite;

    public DinheiroDespesa(int id, String nome, String descricao, Double limite) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.limite = limite;
    }

    public DinheiroDespesa(Object o, String descricao, double valor, LocalDate parse, String formaPagamento, Despesas despesas) {
        super();
    }

    public DinheiroDespesa(Object o, String descricao, double valor, LocalDate parse, String formaPagamento) {
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }
    public String getDescricao() {
        return descricao;
    }

}


