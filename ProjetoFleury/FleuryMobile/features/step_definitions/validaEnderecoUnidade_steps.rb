Dado('que eu tenha acesso ao aplicativo Fleury') do
  @validarendereco.validaApp
end

Dado('faço uma busca por unidade') do
  @validarendereco.buscaUnidade
end

Quando('eu seleciono a unidade desejada') do
  @validarendereco.selecionaUnidade
end

Então('valido o endereço da unidade') do
  @validarendereco.validaEndereco
  expect(id('point_of_care_full_address').text).to eql "SEPS 715/915, Conjunto A, Bloco E, \nAsa Sul, Brasília - DF - 70390-155"
end