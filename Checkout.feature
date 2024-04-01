Feature: Checkout
    Background: como cliente da EBAC-SHOP

    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Scenario: Cadastro não concluido
        When faltar algum item obrigatorio
        Then deve exibir uma mensagem de erro "Item obrigatorio em * em branco"

    Scenario: e-mail invalido
        When o email não tiver "@"
        And "."
        Then exibir mensagem de erro "E-mail invalido"



    Scenario Outline: Cadastro bem sucedido

        Given que eu faça o cadastro
        When Inserido "<nome>"
        And "<Sobrenome>"
        And "<Pais>"
        And "<Endereco>"
        And "<Cidade>"
        And "<Cep>"
        And "<Telefone>"
        And "<E-mail>"
        And clicar em finalizar compra
        Then deve exibir uma "<mensagem>" de sucesso

        Examples:
            | nome   | Sobrenome | Pais     | Endereco               | Cidade    | Cep       | Telefone         | E-mail                      | mensagem                        |
            | João   | Silva     | Brasil   | Rua das Flores, 123    | São Paulo | 01234-567 | 11 91234-5678    | joao.silva@example.com      | Cadastro realizado com sucesso! |
            | Maria  | Santos    | Portugal | Avenida Principal, 456 | Lisboa    | 12345-678 | +351 91234 5678  | maria.santos@example.com    | Cadastro realizado com sucesso! |
            | Carlos | Gonzalez  | Espanha  | Calle Principal, 789   | Madrid    | 28001     | +34 612 34 56 78 | carlos.gonzalez@example.com | Cadastro realizado com sucesso! |
            | Anna   | Müller    | Alemanha | Hauptstraße 101        | Berlim    | 10115     | +49 30 12345678  | anna.mueller@example.com    | Cadastro realizado com sucesso! |
            | Luca   | Rossi     | Itália   | Via Roma, 321          | Roma      | 00100     | +39 06 1234567   | luca.rossi@example.com      | Cadastro realizado com sucesso! |