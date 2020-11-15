#language:pt

Funcionalidade: Login

    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuario
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Contexto: Pagina principal 
        Dado que eu acesso a pagina principal
     
@logout
    Cenário: Usuário deve ser autorizado
        Quando eu faço login com "rodolfopereira09@gmail.com" e "Martinelli05112015"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Rodolfo Pereira"
    
    Esquema do Cenário: Tentativa do Login

        Quando eu faço login com "<email>" e "<senha>"
        Então devo ver a seguinte mensagem "<alerta>"

        Exemplos:
        | email                      | senha  | alerta                     |
        | rodolfopereira09@gmail.com | mickey | Senha inválida             |
        | rodolfopereira@gmail.com   | mickey | Usuário não cadastrado     |
        | rodolfopereira09@.com      | mickey | Email incorreto ou ausente |
