#language:pt

Funcionalidade: Validar Campo Busca

   Sabendo que para a proxima entrega do site de producao teremos que Validar
   os campos de busca de Marca, Modelo e Versao da pagina de resultado de busca da 
   Webmotors, alem da listagem de estoque de uma determinada loja.

    Contexto: Pagina principal 
        Dado que eu acesso a pagina home
   
   
    Cenário: Validar campo "Busca"
        
        E acesso a pagina de resultado de busca da WebMotors com o "link"
        Quando eu clico na marca "Honda"
        E no modelo "City"
        E na versao "1.5 DX 16V Flex 4P Manual"
        Então o resultado deve ser carros da marca "Honda", modelo "City" e versao "1.5 DX 16V Flex 4P Manual"


    Cenário: Validar campo "Busca" de uma loja
        
        E acesso a pagina de listagem de estoque de uma determinda loja da WebMotors com o "link"
        Quando eu clico na marca "Honda"
        E no modelo "City"
        E na versao "1.5 DX 16V Flex 4P Manual"
        Então o resultado deve ser carros da marca "Honda", modelo "City" e versao "1.5 DX 16V Flex 4P Manual"

      
    
   
