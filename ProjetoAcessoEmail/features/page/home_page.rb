class HomePage < SitePrism::Page

    set_url '/'
    element :campo_usuario, '#username'
    element :campo_senha, '#password'
    element :botao_logar, '.signinTxt'

    def logar_site(usuario, senha)
        campo_usuario.set usuario
        campo_senha.set senha
        botao_logar.click
    end
end