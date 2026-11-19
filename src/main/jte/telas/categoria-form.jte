
<!DOCTYPE html>
<html lang="pt-BR" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Categorias - Minhas Despesas</title>

    <link rel="stylesheet" th:href="@{/css/style.css}">
</head>
<body>

<header class="topo">
    <div class="logo">Minhas Despesas</div>

    <nav>
        <a th:href="@{/}" >Início</a>
        <a th:href="@{/despesas}">Despesas</a>
        <a th:href="@{/categorias}" class="ativo">Categorias</a>
        <a th:href="@{/relatorios}">Relatórios</a>
    </nav>
</header>

<main class="container">

    <section class="boas-vindas">
        <h1>Cadastro de Categorias</h1>
        <p>Cadastre uma nova categoria para organizar suas despesas.</p>
    </section>

    <section class="formulario">

        <form th:action="@{/categorias/salvar}"
              th:object="${despesas}"
              method="post">

            <div class="campo">
                <label for="nome">Nome da categoria</label>
                <input type="text"
                       id="nome"
                       th:field="*{nome}"
                       placeholder="Ex: Alimentação"
                       required>
            </div>

            <div class="campo">
                <label for="descricao">Descrição</label>
                <textarea id="descricao"
                          th:field="*{descricao}"
                          placeholder="Descreva a categoria..."
                          rows="4"></textarea>
            </div>

            <div class="botoes">
                <a th:href="@{/categorias}" class="btn-voltar">
                    Cancelar
                </a>

                <button type="submit" class="btn-salvar">
                    Salvar Categoria
                </button>
            </div>

        </form>

    </section>

</main>

<footer>
    © 2026 - Minhas Despesas | Todos os direitos reservados.
</footer>

</body>
</html>
