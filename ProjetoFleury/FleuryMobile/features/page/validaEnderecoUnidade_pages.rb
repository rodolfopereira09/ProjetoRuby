class ValidarEndereco

    def validaApp                               ## Classe que valida se o app esta aberto, 
                                                #necessário um sleep pois o app tem uma inialização
        sleep 1
        id('txtHomeNotLoggedWelcome').displayed?
    end

    def buscaUnidade                            ## Classe que seleciona opção unidade
        id('title_points_of_care').click
        sleep 1
        xpath('//*[contains(@text,"Negar")]').click
    end

    def selecionaUnidade                        ## Classe que seleciona a unidade desejada
        scroll_to("Brasília").click
    end
    
    def validaEndereco                          ## Classe que valida se existe o endereço,
                                                ## nos steps também temos o valor esperado
        id('point_of_care_full_address').displayed?
    end
end
