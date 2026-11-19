package com.example.despesas;

import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Despesas {
    String descricao;
    double valor;
    LocalDate data;
    String formaPagamento;
    Despesas categoria;


    public Despesas(Object o, String nome, String descricao, Double limite) {
    }

    public Despesas() {
    }

    public void Despesa(String descricao, double valor,
                        LocalDate data, String formaPagamento,
                        Despesas categoria,Double limite) {

        this.descricao = descricao;
        this.valor = valor;
        this.data = data;
        this.formaPagamento = formaPagamento;
        this.categoria = categoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public double getValor() {
        return valor;
    }

    public LocalDate getData() {
        return data;
    }

    public String getFormaPagamento() {
        return formaPagamento;
    }

    public Despesas getCategoria() {
        return categoria;
    }

    public Double getLimite() {

    }

    public int getId() {
        return 0;
    }

    public String getNome() {
        return null;
    }

