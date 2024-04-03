            #language: pt


            Funcionalidade: Checkout
            Contexto: como cliente da EBAC-SHOP

            Quero fazer/concluir meu cadastro
            Para finalizar minha compra

            Cenario: Cadastro não concluido
            Quando faltar algum item obrigatorio
            Então deve exibir uma mensagem de erro "Todos os itens com * devem ser preenchidos"

            Cenario: e-mail invalido
            Quando o email não tiver "@" e "."
            Então exibir mensagem de erro "E-mail invalido"


            Esquema do Cenario: Cadastro bem sucedido
            Dado que eu faça o cadastro
            Quando Inserido "<nome>" "<Sobrenome>" "<Pais>" "<Endereco>" "<Cidade>" "<Cep>" "<Telefone>" "<E-mail>"
            E clicar em finalizar compra
            Então deve exibir "<mensagem>" de sucesso

            Exemplos:
            | nome   | Sobrenome | Pais     | Endereco               | Cidade    | Cep       | Telefone         | E-mail                     | mensagem                        |
            | João   | Silva     | Brasil   | Rua das Flores, 123    | São Paulo | 01234-567 | 11 91234-5678    | joao.silva@example.com     | Cadastro realizado com sucesso! |
            | Maria  | Santos    | Portugal | Avenida Principal, 456 | Lisboa    | 12345-678 | +351 91234 5678  | maria.santos@example.com   | Cadastro realizado com sucesso! |
            | Carlos | Gonzalez  | Espanha  | Calle Principal, 789   | Madrid    | 28001     | +34 612 34 56 78 | carlos.gonzalez@examplecom | Cadastro realizado com sucesso! |
            | Anna   | Müller    | Alemanha | Hauptstraße 101        | Berlim    | 10115     | +49 30 12345678  | anna.mueller@example.com   | Cadastro realizado com sucesso! |
            | Luca   | Rossi     | Itália   | Via Roma, 321          | Roma      | 00100     | +39 06 1234567   | luca.rossi@example.com     | Cadastro realizado com sucesso! |


            Esquema do Cenario: Erro ao finalixzar cadastro
            Dado que eu faça o cadastro
            Quando Inserido "<nome>" "<Sobrenome>" "<Pais>" "<Endereco>" "<Cidade>" "<Cep>" "<Telefone>" "<E-mail>"
            E clicar em finalizar compra
            Então deve exibir "<mensagem>" de erro

            Exemplos:
            | ""     | Santos   | Portugal | Avenida Principal, 456 | Lisboa    | 12345-678 | +351 91234 5678  | maria.santos@example.com    | Erro ao finalizar cadastro! |
            | João   | ""       | Brasil   | Rua das Flores, 123    | São Paulo | 01234-567 | 11 91234-5678    | joao.silva@example.com      | Erro ao finalizar cadastro! |
            | Pedro  | Silva    | ""       | Rua das Americas, 44   | São Paulo | 02587-882 | 11 98722-4586    | pedro.silva@example.com     | Erro ao finalizar cadastro! |
            | Maria  | Santos   | Portugal | ""                     | Lisboa    | 12345-678 | +351 91234 5678  | maria.santos@example.com    | Erro ao finalizar cadastro! |
            | Carlos | Gonzalez | Espanha  | Calle Principal, 789   | ""        | 28001     | +34 612 34 56 78 | carlos.gonzalez@example.com | Erro ao finalizar cadastro! |
            | Anna   | Müller   | Alemanha | Hauptstraße 101        | Berlim    | ""        | +49 30 12345678  | anna.mueller@example.com    | Erro ao finalizar cadastro! |
            | Luca   | mocric   | croacia  | jardim Principal, 321  | Roma      | 419852    | ""               | luca.modric@example.com     | Erro ao finalizar cadastro! |
            | João   | Silva    | Brasil   | Rua das Flores, 123    | São Paulo | 01234-567 | 11 91234-5678    | joao.silva@ex ample.com     | Erro ao finalizar cadastro! |
            | Mario  | Alvez    | Brasil   | Rua das Flores, 558    | São Paulo | 01234-852 | 11 91234-1235    | mario#alvez@example.com     | Erro ao finalizar cadastro! |