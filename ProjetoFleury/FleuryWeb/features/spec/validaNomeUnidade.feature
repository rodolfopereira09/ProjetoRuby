#language:pt

Funcionalidade: Validar nome da unidade

     Eu como PO desejo validar o nome da unidade exibida na tela através 
     da pesquisa de unidade do site Fleury

    Cenario: Validar nome da unidade com filtro de facilidade
        Dado que eu tenha acesso ao site Fleury
        E faço uma busca por unidade utilizando o filtro de facilidade
        Quando eu seleciono a primeira unidade na tela
        Então valido o nome da unidade que é exibido na tela
        
    