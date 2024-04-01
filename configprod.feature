Feature: configurar produto
    Background: como cliente da EBAC-SHOP e acessar a pagina do item

    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Scenario: autenticação valida
        When selecionar tamanho M
        And Cor Laranja
        And quantidade 2
        And clicar em comprar
        Then deve ir para a pagina de pagamento do pedido

    Scenario: autenticação valida
        When clicar em Limpar
        Then deve apagar qualquer mudança feita pelo cliente

    Scenario: autenticação invalida
        When selecionar uma quantidade maior que 10
        Then deve exibir uma mensagem "limite de 10 itens por carrinho excedido"

