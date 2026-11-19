package com.example.despesas;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CategoriaController {

    private List<Despesas> categorias = new ArrayList<>();
    private List<Despesas> despesas = new ArrayList<>();

    // Abrir formulário de categoria
    @GetMapping("/categorias/nova")
    public String novaCategoria() {
        return "categoria-form";
    }

    // Salvar categoria
    @PostMapping("/categorias")
    public String salvarCategoria(
            @RequestParam String nome,
            @RequestParam String descricao,
            @RequestParam(required = false) Double limite) {

        Despesas despesas = new Despesas(
                dados.gerarIdDinheiroDespesa(),
                nome,
                descricao,
                limite
        );

        dados.getCategorias().add(dispesas);

        return "redirect:/categorias";
    }

    // Listar categorias
    @GetMapping("/categorias")
    public String listarCategorias(Model model) {

        model.addAttribute(
                "categorias",
                dados.getCategorias()
        );

        return "categorias";
    }

    // Abrir formulário de despesa
    @GetMapping("/despesas/nova")
    public String novaDespesa(Model model) {

        model.addAttribute(
                "categorias",
                dados.getCategorias()
        );

        return "despesa-form";
    }

    // Salvar despesa
    @PostMapping("/despesas")
    public String salvarDespesa(
            @RequestParam String descricao,
            @RequestParam double valor,
            @RequestParam String data,
            @RequestParam String formaPagamento,
            @RequestParam int categoriaId) {

        Despesas.DadosAplicacao despesas = dados.getCategorias()
                .stream()
                .filter(c -> c.getId() == categoriaId)
                .findFirst()
                .orElse(null);

        if (despesas == null) {
            return "redirect:/despesas/nova";
        }

        DinheiroDespesa dinheiroDespesa = new DinheiroDespesa(
                dados.gerarIdDinheiroDespesa(),
                descricao,
                valor,
                LocalDate.parse(data),
                formaPagamento,
                despesas
        );

        dados.getDespesas().add(dispesas);

        return "redirect:/despesas";
    }

    // Listar despesas
    @GetMapping("/despesas")
    public String listarDespesas(Model model) {

        model.addAttribute(
                "despesas",
                dados.getDespesas()
        );

        return "despesas";
    }
}
