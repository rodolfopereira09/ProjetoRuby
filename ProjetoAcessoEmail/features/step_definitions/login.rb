Dado("que eu tenho um usuario.") do |table|
  
  @usuario = table.rows_hash['usuario']
  @senha = table.rows_hash['senha']
  @home = HomePage.new
  @home.load
  end
  
  Quando("eu faco Login") do
   @home.logar_site('GRUPOTBA\RodolfoP', 'Martinelli05112015')

  end
  
  Entao("eu verifico se estou logado") do
  expect(page).to have_current_path('https://webmail.grupotba.com/owa/#path=/mail', url: true)
  expect(find('._hl_d').text).to have_content "Rodolfo Pereira"
  end