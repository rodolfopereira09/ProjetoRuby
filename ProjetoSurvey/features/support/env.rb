require 'capybara/cucumber'
require 'rspec/expectations'
require 'net/http'
require 'uri'
require 'headless'
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'


Capybara.configure do |config|
config.default_driver = :selenium_chrome
config.app_host = 'https://pt.surveymonkey.com/user/sign-in/?ut_source=megamenu'
browser = Capybara.current_session.driver.browser
browser.manage.delete_all_cookies
Capybara.reset_sessions!
config.default_max_wait_time = 40
end