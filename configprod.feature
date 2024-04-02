    #language: pt


    Funcionalidade: configurar produto
    Contexto: como cliente da EBAC-SHOP quero acessar a pagina do item

    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Cenario: autenticação valida
        Quando selecionar <tamanho>, <Cor> e <Quantidade>
        Então deve ir para a pagina de pagamento do pedido

    Cenario: autenticação valida
        Quando clicar em Limpar
        Então deve apagar qualquer mudança feita pelo cliente

    Cenario: autenticação invalida
        Quando selecionar uma quantidade maior que 10
        Então deve exibir uma mensagem "limite de 10 itens por carrinho excedido"

