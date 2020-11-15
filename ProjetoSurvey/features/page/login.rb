Dado('que eu esteja no site survey') do
    visit 'https://pt.surveymonkey.com/user/sign-in/?ut_source=megamenu'
    Capybara.page.driver.browser.manage.window.maximize
end

Dado('faço o login com meu usuario e senha') do
    find('#username').set "RodolfoPereira84"
    find('#password').set "Martinelli05112015"
    click_button 'FAZER LOGIN'
end

Quando('eu acesso o menu planos e precos') do
    click_link "Planos e preços"
end

Então('valido o nome de cada plano com seu valor') do
    expect(find(:xpath, '/html/body/div[2]/div[2]/div/div/section[1]/table/thead/tr[2]/th[1]/h2').text).to have_content "PREMIUM anual"
    expect(find(:xpath, '/html/body/div[2]/div[2]/div/div/section[1]/table/thead/tr[2]/th[2]/h2').text).to have_content "AVANÇADO anual"
    expect(find(:xpath, '/html/body/div[2]/div[2]/div/div/section[1]/table/thead/tr[2]/th[3]/h2').text).to have_content "STANDARD mensal"
    expect(find(:xpath, '/html/body/div[2]/div[2]/div/div/section[1]/table/thead/tr[2]/th[4]/h2').text).to have_content "FLEX"
end
