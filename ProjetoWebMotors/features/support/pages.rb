require 'capybara'
require 'capybara/cucumber'
require 'rspec'

class AcessoSite
    include Capybara::DSL

     def linkhome
          linkhome = visit ('https://www.webmotors.com.br/')
          Capybara.page.driver.browser.manage.window.maximize
          
     end

     def linkbusca
          linkbusca = visit 'https://www.webmotors.com.br/carros/estoque'
          sleep 1
     end

     def linkhonda
          linkhonda = click_link 'honda'
          sleep 3
     end

     def linkmodelo
          linkmodelo = find(:xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[2]').click
                    click_link 'CITY'
                    sleep 1
     end

     def linkversao
          linkversao = find(:xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[3]').click
                    click_link '1.5 DX 16V FLEX 4P MANUAL'
                    sleep 1
     end
     
     def linkbuscaloja
          linkbuscaloja = visit 'https://www.webmotors.com.br/carros/estoque/?IdRevendendor=3834764&TipoVEiculo=carros&anunciante=concession%C3%A1ria%7Cloja'
          sleep 1
     end

end
