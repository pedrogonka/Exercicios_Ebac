Feature: login
    Background: como cliente da EBAC-SHOP

    Quero fazer o login na plataforma
    Para visualizar meus pedidos

    Scenario: autenticação valida
        When eu digitar "exemplo1@gmail.com"
        And senha "ex1amp"
        Then deve exibir uma mensagem de boas vindas "Bem-vindo de volta!"

    Scenario: usuario inexistente
        When eu digitar "exemplo666@gmail.com"
        And senha "ex1amp"
        Then deve exibir uma mensagem de alerta "Usuario Inexistente"

    Scenario: senha invalida
        When eu digitar "exemplo1@gmail.com"
        And senha "ex666amp"
        Then deve exibir uma mensagem de alerta "usuario ou senha invalidos"


    Scenario Outline: autenticação multiplos usuarios
        Given que eu acesse a pagina de autenticação da loja
        When quando eu digitar <usuario>
        And <senha>
        Then deve exibir a <mensagem> de sucesso

        Examples:
            | usuario              | senha     | mensagem              |
            | "exemplo1@gmail.com" | "ex1amp"  | "Bem-vindo de volta!" |
            | "exemplo2@gmail.com" | "em45pli" | "Bem-vindo de volta!" |
            | "exemplo3@gmail.com" | "ex78amp" | "Bem-vindo de volta!" |
            | "exemplo4@gmail.com" | "em90pli" | "Bem-vindo de volta!" |
            | "exemplo5@gmail.com" | "ex23amp" | "Bem-vindo de volta!" |