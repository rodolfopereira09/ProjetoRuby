require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #selenium_chrome_headless executa background 
    Capybara.ignore_hidden_elements = false
    
end

