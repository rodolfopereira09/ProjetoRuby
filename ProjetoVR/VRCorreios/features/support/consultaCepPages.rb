class ConsultaCEP
    include Capybara::DSL

    def acessaSite
        visit 'https://www.correios.com.br/'
    end

    def fazConsulta(cep)
        find('#acesso-busca').set cep
        find('#acesso-busca').send_keys(:enter)
    end

    def trocaBrowser
        popup = page.driver.browser.window_handles.last
        page.driver.browser.switch_to.window(popup)
    end
end
