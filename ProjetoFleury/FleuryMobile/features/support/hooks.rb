Before do
    $driver.start_driver
    @validarendereco = ValidarEndereco.new
    
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[!@%&#"(),]/,'')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_viewport_screenshot(screenshot)
    $driver.quit_driver  
end
