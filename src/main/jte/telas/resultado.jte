@import java.util.List
@import com.example.despesas.Despesas

@param List<Despesas> categorias

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Categorias</title>
    <link rel="stylesheet" href="/css/enfeite.css">
</head>

<body>

<nav>
    <h2>💰 Minhas Despesas</h2>
    <a href="/">Início</a>
    <a href="/categorias">Categorias</a>
    <a href="/categorias/nova">Nova Categoria</a>
    <a href="/despesas">Despesas</a>
    <a href="/despesas/nova">Nova Despesa</a>
</nav>

<div class="container">

    <div class="titulo">
        <h1>Categorias</h1>

        <a href="/categorias/nova" class="novo">
            + Nova Categoria
        </a>
    </div>

    <table>

        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Limite</th>
        </tr>
        </thead>

        <tbody>

        @for(var c : categorias)

            <tr>
                <td>${c.getId()}</td>
                <td>${c.getNome()}</td>
                <td>${c.getDescricao()}</td>

            </tr>

        @endfor

        </tbody>

    </table>

    @if(categorias.isEmpty())
        <p class="vazio">
            Nenhuma categoria cadastrada.
        </p>
    @endif

</div>

</body>
</html>