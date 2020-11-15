Dado("que tenho o acesso ao site da magazine luiza") do
    @acessosite.site
    end

Entao("valido se o site esta correto") do
    expect(page).to have_current_path('https://www.magazineluiza.com.br/', url: true)
    end

Dado("que eu esteja no site da magazine luiza") do
    @acessosite.site
    end

Dado("no campo de busca informo produto") do
    @acessosite.busca
    end

Quando("o resultado aparecer na tela clico no produto") do
    @acessosite.produto
    end

Então("valido o nome do produto") do
    @acessosite.valida
    end
Quando("clico no botão adicionar a sacola") do
    find(:xpath, '//*[@class="button__text"]').click
end

Então("valido se o produto entrou na sacola") do
    compra = find(:xpath, '//*[@class="BasketItemProduct-info-title"]').value.clone
    expect(find(:xpath, '//*[@class="BasketItemProduct-info-title"]').text).to have_content  "Conjunto de Assadeiras Sempre Quadrada - de Vidro 5 Peças 15170200636965"
end