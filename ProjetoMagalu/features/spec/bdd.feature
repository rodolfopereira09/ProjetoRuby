#language: pt

Funcionalidade: Acessar Site / Realizar Busca / Realizar Compra

Eu como cliente gostaria de acesasr o site de compra e realizar busca de produtos

Contexto: Pagina principal 
        Dado que tenho o acesso ao site da magazine luiza

@teste1
Cenario: Acessar Site
Entao valido se o site esta correto

@teste2
Cenario: Validar busca de produto
E no campo de busca informo produto
Quando o resultado aparecer na tela clico no produto
Então valido o nome do produto

@teste3
Cenario: Validar botão confirma compra
E no campo de busca informo produto
Quando o resultado aparecer na tela clico no produto
E clico no botão adicionar a sacola
Então valido se o produto entrou na sacola