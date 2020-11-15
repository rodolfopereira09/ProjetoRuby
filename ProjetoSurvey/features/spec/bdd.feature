#language:pt

Funcionalidade: Valida Planos

    Para que eu possa validar os planos
    Sendo um usuario
    Posso acessar o sistema com meu email e senha previamente cadastrados e validar os planos

    Cenário: Validar Tela de Planos
        Dado que eu esteja no site survey
        E faço o login com meu usuario e senha
        Quando eu acesso o menu planos e precos
        Então valido o nome de cada plano com seu valor