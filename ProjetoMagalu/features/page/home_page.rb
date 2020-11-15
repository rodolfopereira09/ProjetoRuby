require 'rspec'

class AcessoSite
    include Capybara::DSL

    def site
         site = visit 'https://www.magazineluiza.com.br/'
         Capybara.page.driver.browser.manage.window.maximize
    end

    def busca
        find('#inpHeaderSearch').set "Travessa"
        find('#inpHeaderSearch').send_keys(:enter)
    end

    def produto
        find('#nm-product-080918600').click
    end

    def valida
        find('.header-product__title').text "Travessa"
    end
end