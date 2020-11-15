class ValidarUnidade
    include Capybara::DSL

    def acessaSite                              ## Classe que acessa o site principal
        visit 'http://fleury.com.br'
    end

    def buscaPorFiltro                          ## Classe que seleciona o tipo de filtro facilidade
        click_link 'Unidades'
        find('#checkoox-select-facilities').click
        find(:xpath, '//*[contains(@name,"Vacinação")]//..').click
    end

    def selecionaUnidade                        ## Classe que seleciona detalhes da Unidade
        find('#button-see-on-map-2-alphaville').click
    end
    
    def validaUnidade(nomeunidade)              ## Classe que valida se exite o nome da Unidade 
                                                ## passando 0como parâmetro nome da unidade
                                                ## coloquei um sleep apenas para dar tempo de fazer o print
        page.has_text?(nomeunidade)
        sleep 1
    end
end
