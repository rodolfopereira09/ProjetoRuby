Before do
    @validarunidade = ValidarUnidade.new
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[!@%&#"(),]/,'')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    #embed(screenshot, 'image/png', 'PrintTestes')
end