require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'net/http'
require 'uri'
require 'rubygems'
require 'selenium/webdriver'
require 'headless'
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'

Capybara.configure do |config|
config.default_driver = :selenium_chrome
config.app_host = 'https://www.magazineluiza.com.br/'
browser = Capybara.current_session.driver.browser
browser.manage.delete_all_cookies
Capybara.reset_sessions!
config.default_max_wait_time = 40
end