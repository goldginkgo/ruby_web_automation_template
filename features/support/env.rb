require 'bundler/setup'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'site_prism'
require 'active_support'

ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'lib'))

Capybara.configure do |config|
  config.run_server = false
  config.ignore_hidden_elements = false
  config.default_max_wait_time= 10
  config.default_driver = :selenium_firefox
  config.match = :prefer_exact
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
