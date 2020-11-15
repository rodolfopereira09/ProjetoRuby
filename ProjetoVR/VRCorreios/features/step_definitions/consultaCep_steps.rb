Dado('que eu acesso a pagina home') do
  @consultacep.acessaSite
end

Quando('eu faço uma consulta de CEP {string}') do |cep|
  @consultacep.fazConsulta(cep)
end

Então("devo ver a seguinte mensagem {string}") do |msg|
  @consultacep.trocaBrowser
  expect(find('.ctrlcontent').text).to have_content msg
end
