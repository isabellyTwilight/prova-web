@import java.util.List
@import com.example.despesas.Despesas

@param List<Despesas> categorias

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Nova Despesa</title>

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

    <h1>Nova Despesa</h1>

    @if(categorias.isEmpty())

        <p>Cadastre uma categoria primeiro!</p>

        <a href="/categorias/nova">
            Cadastrar categoria
        </a>

    @else

        <form action="/despesas" method="post">

            <label>Descrição *</label>
            <input type="text"
                   name="descricao"
                   placeholder="Ex: Almoço RU"
                   required>

            <label>Valor (R$) *</label>
            <input type="number"
                   name="valor"
                   step="0.01"
                   min="0.01"
                   required>

            <label>Data *</label>
            <input type="date"
                   name="data"
                   required>

            <label>Categoria *</label>

            <select name="categoriaId" required>

                <option value="">
                    Selecione...
                </option>

                @for(var c : categorias)
                    <option value="${c.getId()}">
                        ${c.getNome()}
                    </option>
                @endfor

            </select>

            <label>Forma de pagamento</label>

            <div class="pagamento">
                <label>
                    <input type="radio"
                           name="formaPagamento"
                           value="Pix"
                           required>
                    Pix
                </label>

                <label>
                    <input type="radio"
                           name="formaPagamento"
                           value="Cartão">
                    Cartão
                </label>

                <label>
                    <input type="radio"
                           name="formaPagamento"
                           value="Dinheiro">
                    Dinheiro
                </label>
            </div>

            <button type="submit">
                Salvar despesa
            </button>

            <a href="/despesas" class="cancelar">
                Cancelar
            </a>

        </form>

    @endif

</div>

</body>
</html>