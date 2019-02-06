require 'capybara'
require_relative '../lib/sparta_demosite'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden = false
  config.default_max_wait_time = 10
  config.default_driver = :chrome
end