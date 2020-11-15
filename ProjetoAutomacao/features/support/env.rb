require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #selenium_chrome_headless executa background 
    config.app_host = 'http://demo.automationtesting.in/Register.html'
    browser = Capybara.current_session.driver.browser
    browser.manage.delete_all_cookies
    Capybara.reset_sessions!
    config.default_max_wait_time = 40
end