#language:pt

Funcionalidade: Consulta CEP

     Eu como PO desejo uma funcionalidade para consultar os dados de um endereço a partir de um CEP.

    Contexto: Pagina Home 
        Dado que eu acesso a pagina home
    
    Esquema do Cenário: Busca CEP

        Quando eu faço uma consulta de CEP "<cep>"
        Então devo ver a seguinte mensagem "<msg>"

        Exemplos:
        | cep                         |  msg                          |
        | 13310284                    | DADOS ENCONTRADOS COM SUCESSO |
        | 00000000                    | DADOS NAO ENCONTRADOS         |
