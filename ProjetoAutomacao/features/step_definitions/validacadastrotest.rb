Dado('que esteja no site de automação') do
    @validacadastro.abrirbrowser
  end
  
  Quando('eu preencher os dados de cadastro') do
    @validacadastro.preenchercadnome('Testeop', 'TestePo')
    @validacadastro.preenchercadend('"Rua:Teste \n Bairro:Teste \n Cidade: Teste"')
    @validacadastro.preenchercademail("testert@teste1.com.br")
    @validacadastro.preenchercadtel("2314175659")
    @validacadastro.marcarsexomasculino
    @validacadastro.marcarhobbies
    @validacadastro.selecionarlinguagem
    @validacadastro.selecionarskill
    @validacadastro.selecionarpais
    @validacadastro.selecionaroutropais
    @validacadastro.selecionardatanasc("1988", "January", "15")
    @validacadastro.preenchersenha("Teste@123", "Teste@123")
    @validacadastro.clicarbotaoconfirma
  end
  
  Então('o site exibe a tela de edição do cadastro web table.') do
   @validacadastro.validatelaedicao
  end