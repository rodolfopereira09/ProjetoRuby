Dado("que eu acesso a pagina home") do
    @acessosite.linkhome
  ##sleep 30000
  end
  
  Dado("acesso a pagina de resultado de busca da WebMotors com o {string}") do |linkbusca|
    @acessosite.linkbusca
    
  end
  
  Quando("eu clico na marca {string}") do |linkhonda|
    @acessosite.linkhonda
    
  end
  
  Quando("no modelo {string}") do |linkmodelo|   
    @acessosite.linkmodelo
    
  end

  Quando("na versao {string}") do |string|
    @acessosite.linkversao
  end
  
  Então("o resultado deve ser carros da marca {string}, modelo {string} e versao {string}") do |string, string2, string3|
    expect(page).to have_content "Honda City 1.5 Dx 16v Flex 4p Manual Novos e Usados"  
    
  end

  Dado("acesso a pagina de listagem de estoque de uma determinda loja da WebMotors com o {string}") do |string|
  @acessosite.linkbuscaloja
  end