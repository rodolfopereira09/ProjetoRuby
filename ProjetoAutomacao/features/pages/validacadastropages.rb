class ValidaCadastro
    include Capybara::DSL

    def abrirbrowser
        visit 'http://demo.automationtesting.in/Register.html'
    end

    def preenchercadnome(nome, sobrenome)
        find(:xpath, '//*[contains(@placeholder, "First Name")]').set nome
        find(:xpath, '//*[contains(@placeholder, "Last Name")]').set sobrenome
    end

    def preenchercadend(endereco)
        find(:xpath, '//*[@id="basicBootstrapForm"]/div[2]/div/textarea').set endereco 
    end

    def preenchercademail(email)
        find(:xpath, '//*[@type="email"]').set email 
    end

    def preenchercadtel(telefone)
        find(:xpath, '//*[@type="tel"]').set telefone   
    end

    def marcarsexomasculino
        find(:xpath, '//*[@type="radio" and @value="Male"]').click  
    end

    def marcarhobbies   
        find('#checkbox1').click
        find('#checkbox3').click 
    end

    def selecionarlinguagem
        find('#msdd').click
        find(:xpath, '//li/a[contains(., "Portuguese")]').click
    end

    def selecionarskill
        find(:xpath, '//*[@value="Java"]').click
    end
    
    def selecionarpais
        find('#countries').click
        select('Brazil')
    end

    def selecionaroutropais
        find(:xpath, '//*[@class="select2-selection__arrow"]').click
        find(:xpath, '//span/ul/li[contains(., "Japan")]').click
    end

    def selecionardatanasc(ano, mes, dia)
        find(:xpath, '//*[@placeholder="Year"]').click
        select(ano)
    
        find(:xpath, '//*[@placeholder="Month"]').click
        select(mes)

        find(:xpath, '//*[@placeholder="Day"]').click
        select(dia)
    end

    def preenchersenha(senha, confirmasenha)
        find('#firstpassword').set senha
        find('#secondpassword').set confirmasenha
    end

    def clicarbotaoconfirma 
        find('#submitbtn').send_keys(:enter)
    end

    def validatelaedicao
        page.has_title? "Web Table"  
    end
end

