package com.example.despesas;

public class Categoria {
    String nome;
    String discricao;

    public Categoria(String nome, String discricao) {
        this.nome = nome;
        this.discricao = discricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDiscricao() {
        return discricao;
    }

    public void setDiscricao(String discricao) {
        this.discricao = discricao;
    }
}
