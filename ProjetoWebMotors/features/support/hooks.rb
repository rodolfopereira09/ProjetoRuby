Before do
    @acessosite = AcessoSite.new
end

After do |scenario| ##cucumber --format html --out=log/feature.html
    nome_cenario = scenario.name.gsub(/[!@%&#"(),]/,'')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    attach(screenshot, nome_cenario)
end