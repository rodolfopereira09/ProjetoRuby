Dado('que eu tenha acesso ao site Fleury') do
  @validarunidade.acessaSite
end

Dado('faço uma busca por unidade utilizando o filtro de facilidade') do
  @validarunidade.buscaPorFiltro
end

Quando('eu seleciono a primeira unidade na tela') do
  @validarunidade.selecionaUnidade
end

Então('valido o nome da unidade que é exibido na tela') do
 @validarunidade.validaUnidade('Alphaville')
end