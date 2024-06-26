            #language: pt

            Funcionalidade: tela de login
            Contexto: Dado que eu acesse a pagina de autenticação da loja

            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Cenario: autenticação valida
            Quando eu digitar "exemplo1@gmail.com"
            E senha "ex1amp"
            Então deve exibir uma mensagem de boas vindas "Bem-vindo de volta!"

            Cenario: usuario inexistente
            Quando eu digitar "exemplo666@gmail.com"
            E senha "ex1amp"
            Então deve exibir uma mensagem de alerta "Usuario Inexistente"

            Cenario: senha invalida
            Quando eu digitar "exemplo1@gmail.com"
            E senha "ex666amp"
            Então deve exibir uma mensagem de alerta "usuario ou senha invalidos"


            Esquema do Cenario: autenticação multiplos usuarios
            Quando quando eu digitar <usuario>, <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario              | senha     | mensagem              |
            | "exemplo1@gmail.com" | "ex1amp"  | "Bem-vindo de volta!" |
            | "exemplo2@gmail.com" | "em45pli" | "Bem-vindo de volta!" |
            | "exemplo3@gmail.com" | "ex78amp" | "Bem-vindo de volta!" |
            | "exemplo4@gmail.com" | "em90pli" | "Bem-vindo de volta!" |
            | "exemplo5@gmail.com" | "ex23amp" | "Bem-vindo de volta!" |


            Esquema do Cenario: não autenticação de multiplos usuarios
            Quando quando eu digitar <usuario>, <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | usuario               | senha      | mensagem                     |
            | "exemplo1@gmail.com"  | "ex1am@p"  | "Usuario ou senha invalidos" |
            | "exemplo2@gmail.com"  | "em@45pli" | "Usuario ou senha invalidos" |
            | "ezemplo3@gmail.com"  | "ex78amp"  | "Usuario ou senha invalidos" |
            | "exemplo4@gmail.com"  | "em@90pli" | "Usuario ou senha invalidos" |
            | "exemplo55@gmail.com" | "ex23amp"  | "Usuario ou senha invalidos" |
